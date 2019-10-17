# Building a Theremin
We are building a theremin for our Engineering Capstone project.

## Summary
The goal of this project is to research the science behind the theremin, an electronic instrument that uses two antennas to produce a controllable sound signal. By the end of the school year we will have a working instrument and hopefully the skill to make music with it as well.

In order to achieve a fully functional product in the time provided, we will need to plan out the entire process step by step:

### Research

We have very little knowledge about how theremins produce sound so we will have to take the time to learn before beginning work. The theremin community is very strong; many others have gone through the process of building their own theremins and their processes are well documented online. 
  
### Design

There is some amount of risk with this project. we will be building a fairly large device with many specialized electronic parts, meaning that mistakes in the design process can be expensive and time consuming. we will take the time to consider how each part works within the assembly and make sure every part we order will work as intended.

## Introduction
Both of us like studying and making music, and unique musical instruments are especially interesting.  The theremin stood out an odd instrument that has a unique sound and can be assembled using fairly standard electronic parts.  It can be built over the course of a school year. The theremin was invented in 1920 by Russian scientist L ́eon Theremin. The instrument was a popular instrument through the 1930's and early 40's, though never quite successful commercially. Today, the theremin is popular among electronics enthusiasts and hobbyists.

If we want to successfully build a working theremin, we will need to learn a  lot  about  electrical  engineering.   This  project  will  be  both  a  technical  and musical challenge.

### History
The theremin was created by Russian scientist L ́eon Theremin in 1920. Invented by accident while experimenting with high-frequency oscillators, Theremin initially called the instrument an etherphone, referring to how it didn’t have to betouched to be played.  Theremin spent several years touring before eventually moving to America, where he patented the theremin in 1929. There, he met former violinist Clara Rockmore, who helped popularize the theremin and played itin concerts through the 40’s. Despite its initial popularity, however the thereminfell into relative obscurity for the rest of the 20th century. It wasn’t until the 1990’s  that  synthesizer and  electronic  music  pioneer  Robert  Moog  somewhat repopularized it with the release of the Moog Etherwave.  Today, the thereminremains popular among hobbyists and some music groups, though not usually as a main focus.

### Circuitry

An understanding of basic sound and electric principles are required in orderto  know  how  a  theremin  works.   At  a  fundamental  level,  a  theremin’s  soundis  produced  by  combining  a  total  of  three  different  signals:  one  determining volume and two determining pitch.  Two pitch components are required becausethe  signal  produced  by  the  pitch  antenna  is  too  high-frequency  to  hear,  andmust  be  combined  with  a  reference  frequency  to  generate  something  audible. These currents are controlled by the two antennas using variable capacitors and inductors.

#### Capacitors
Standard capacitors consist of two conductive materials separated by a nonconductor, which build up a charge when a current is applied to them. In theremins, each antenna forms a large, variable capacitor with the player’s hand, with the air between them as the nonconductor. The capacitance changes as the player changes the distance between their hand and the antenna. Since we need an AC signal to produce sound, the theremin uses oscillators. Oscillators workby building up a charge on the capacitor until it’s high enough to generate a current, which flows through the inductor and charges the capacitor in the oppo-site direction. Then the current then switches, generating an opposite current,and keeps switching back and forth as long as there’s power. This generates a sinusoidal AC current whose frequency can be changed by changing changingthe impedance of the capacitors or inductors involved.  Pitch and volume canbe manipulated by changing the distance (or impedance) between the antennas and the player’s hands. Most  theremins have three total oscillators: one forpitch, one for the reference frequency, and one for volume.

#### Heterodyne Process
The frequency of the AC current produced by the pitch oscillator is way above the range of human hearing, so it needs to be lowered. This is done by multiplying the pitch signal with a static reference signal. The reference is tuned so the difference between it and the pitch frequency, or beat, is within human hearing  ranges. The resulting current can be fed into a speaker to  produce audible sounds.

## Final Design
Our  theremin will resemble the design of the original instrument invented in 1920. Its design has remained largely the same for the past 100 years and it works perfectly. The electrical components will be housed in a rectangular boxthat acts as the base of our theremin. The pitch antenna will extend vertically from one end of the box for about 18” and the volume antenna loop will extend horizontally from the opposite side of the box.

By itself, the theremin has no need for an Arduino or Raspberry Pi.  However, in order to fullfill the requirements of the project, we may create a visualizer using a programming language such as Processing to add another layer of interactivity to our instrument.

## Team Members
We are a two-person team.  This project facilitates us working together most of the time, but we both have our strengths as well.
* Barrett  will  oversee  the  ordering  of  electrical  components  and  once  thetheremin is nearing completion he will look into programming a visualizertool.
* Amara  will  be  designing  the  theremin  and  laser  cutting  or  3D  printingany necessary components.
* We will be working together to wire the circuitry and assemble the box
