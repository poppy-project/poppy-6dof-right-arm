# About the Electronic

A small bit of electronic hacking is required for now. You need to power the XL-320 motors with 7.5V and the MX-28 with 12V.

The cables between motors have two purposes:

* Distribute alimentation to each motor
* Convey messages to each motor (ordering them to move or asking them for sensors values)

Thus the alimentation should be added between the USB2AX (that deals with communication aspects) and the motors.
To this end simply create the following card that can power both type of motors.

![elec1](img/electronic/elec1.jpg)

## Bill of Materials

| Description                   | Designator | Quantity |
| -----------------------------:|:----------:|:--------:|
| [CAP CER 0.1UF 50V RADIAL](http://fr.farnell.com/kemet/c320c104m5u5ta/condensateur-mlcc-z5u-100nf-50v/dp/1457658)      |    C1      |     1    |          
| [CAP ALUM 1.0UF 50V RADIAL](http://fr.farnell.com/nichicon/ukw1h010mdd1td/aluminum-electrolytic-capacitor/dp/1823811)     |    C2      |     1    |
| [Cap Aluminum Lytic 1000uF 25V](http://fr.farnell.com/panasonic-electronic-components/eca1ehg102/condensateur-elec-alu-1000uf-25v/dp/1848543) |    C3      |     1    |
| [Standard LED](http://fr.farnell.com/vishay/tlur4400/led-3mm-rouge/dp/1045372)                  |    D1      |     1    |
| [1N5822](http://fr.farnell.com/multicomp/1n5822/diode-schottky-3a-40v/dp/7429339)                        |    D2      |     1    |
| [Molex 22-03-5035](http://fr.farnell.com/molex/22-03-5035/embase-droite-2-5mm-3-voies/dp/9979620?ost=Molex+22-03-5035)              |   J1,J2    |     2    |
| [Molex 22-03-5045](http://fr.farnell.com/molex/22035045/embase-vertical-2-5mm-4-voies/dp/1104204?ost=Molex+22-03-5045)              |   J3,J4    |     2    |
| [Molex 53253-0370](http://fr.farnell.com/molex/53253-0370/embase-male-2-0mm-3-voies/dp/1756921?ost=Molex+53253-0370)              |   J5,J6    |     2    | 
| [CONN 2POS 1725656](http://fr.farnell.com/phoenix-contact/1725656/bornier-sur-ci-2v-2-54mm/dp/3041359?ost=Phoenix+Contact+1725656)             |    J7      |     1    |
| [CONN PWR JACK  PJ-202AH](http://fr.farnell.com/switchcraft/rapc712bk/connector-dc-power-jack-5a/dp/1617204?CMP=os_Google-FR_ProductDetail_Redirect)       |   JACK     |     1    |
| [Resistors 200Ohm 1/4W](http://fr.farnell.com/multicomp/mcmf0w4ff2000a50/metal-film-resistor-200-ohm-250mw/dp/1126948)         |    R1      |     1    |
| [Resistors 1KOhm 1/4W](http://fr.farnell.com/multicomp/mcmf0w4ff1001a50/metal-film-resistor-1kohm-250mw/dp/1126919)          |    R2      |     1    |
| [Resistors 430Ohm  1/4W](http://fr.farnell.com/multicomp/mcmf0w4ff4300a50/metal-film-resistor-430-ohm-250mw/dp/1129150)        |    R3      |     1    |
| [Adjuste Regulator LM317](http://fr.farnell.com/stmicroelectronics/lm317t/regulateur-ajust-1-2-37v-to-220/dp/9756027)       |    U1      |     1    |
| [H/SINK 6396B](http://fr.farnell.com/aavid-thermalloy/6396bg/dissipateur-to-220-218-5-6c-w/dp/1213472?ost=6396B)| TO-220 radiator |   1  |
The card design has been made in CircuitMaker, you can open the project in:

[https://workspace.circuitmaker.com/Account/Login?ReturnUrl=%2fProjects%2f5513C8C5-B3C1-4E83-8C02-FD9805562557] (https://workspace.circuitmaker.com/Account/Login?ReturnUrl=%2fProjects%2f5513C8C5-B3C1-4E83-8C02-FD9805562557)

But you need an account, you can create an account in this [link](http://www.circuitmaker.com/thank-you/#download), then you have access to project.

If you have your own PCB designer for make circuits, you can follow this schematic:

![schematic](img/electronic/schematic.jpg)



## [Software »]( https://github.com/poppy-project/poppy-6dof-right-arm/blob/master/doc/software.md)

