import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioInput input;
FFT fft;
float r;
float g;
float b;
color bkg;

int buffer = 500;
float range = 3000;
int A4 = 440;
float C0;

String[] notes = {"C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"};
FloatList freq;
float step;
int avg;

String pitch(float freq) {
  int h = round(12 * log(freq / C0) / log(2));
  int octave = floor(h / 12);
  int n = h % 12;
  
  String result;
  if(n > -1 && n < 12) result = notes[n] + str(octave);
  else result =  "none";
  
  return result;
}

void setup() {
  size(512, 200);
  step = width / range;
  C0 = A4 * pow(2, -4.75);
  freq = new FloatList();
  minim = new Minim(this);
  input = minim.getLineIn(Minim.STEREO, 2048);
  fft = new FFT(input.bufferSize(), input.sampleRate());
}

void draw() {
  background(bkg);
  int max = 0;
  fft.forward(input.mix);
  //for(int i = 0; i < fft.specSize(); i++) {
  for(int i = 0; i < range; i++) {
    r = abs(sin(i * (1 - step) / range) * 255);
    g = abs(tan(i * (1 - step) / range) * 255);
    b = abs(cos(i * (1 - step) / range) * 255);
    stroke(r, g, b);
    line(i * step, height, i * step, height - fft.getFreq(i) * 10);
    if(fft.getFreq(i) > max) {
      bkg = color(r / 2, g / 2, b / 2);
      max = i;
      freq.append(i);
    }
  }
  
  while(freq.size() > buffer) freq.remove(0);
  
  avg = 0;
  for(int i = 0; i < freq.size(); i++) {
    avg += freq.get(i);
  }
  avg = round(avg / buffer);
  
  fill(255);
  textSize(14);
  textAlign(LEFT, TOP);
  text(pitch(avg), 5, 5);
}
