import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioInput input;
FFT fft;
float r;
float g;
float b;
color bkg;

FloatList freq;

int buffer = 50;
float range = 3000;
float step;
int avg;

void setup() {
  size(512, 200);
  step = width / range;
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
  text(avg, 5, 5);
}
