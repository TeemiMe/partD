fis = mamfis('Name',"TipMamdani");

fis = addInput(fis,[0 1],"Name","m");
fis = addInput(fis,[0 1],"Name","s");
fis = addInput(fis,[0 1],"Name","rho");

fis = addMF(fis,"m","trapmf",[0 0 0.1 0.3],"Name","VS");
fis = addMF(fis,"m","trimf",[0.1 0.3 0.5],"Name","S");
fis = addMF(fis,"m","trapmf",[0.4 0.7 1 1],"Name","M");

fis = addMF(fis,"s","trapmf",[0 0 0.15 0.35],"Name","S");
fis = addMF(fis,"s","trimf",[0.15 0.3 0.45],"Name","RS");
fis = addMF(fis,"s","trimf",[0.3 0.5 0.7],"Name","M");
fis = addMF(fis,"s","trimf",[0.55 0.7 0.85],"Name","RL");
fis = addMF(fis,"s","trapmf",[0.6 0.8 1 1],"Name","L");

fis = addMF(fis,"rho","trapmf",[0 0 0.4 0.6],"Name","L");
fis = addMF(fis,"rho","trimf",[0.4 0.6 0.8],"Name","M");
fis = addMF(fis,"rho","trapmf",[0.6 0.8 1 1],"Name","H");

plotmf(fis,"input",1);
plotmf(fis,"input",2);
plotmf(fis,"input",3);

fis = addOutput(fis,[0 1],"Name","n");

fis = addMF(fis,"n","trapmf",[0 0 0.1 0.3],'Name',"VS");
fis = addMF(fis,"n","trimf",[0 0.2 0.4],'Name',"S");
fis = addMF(fis,"n","trimf",[0.25 0.35 0.45],'Name',"RS");
fis = addMF(fis,"n","trimf",[0.3 0.5 0.7],'Name',"M");
fis = addMF(fis,"n","trimf",[0.55 0.65 0.75],'Name',"RL");
fis = addMF(fis,"n","trimf",[0.6 0.8 1],'Name',"L");
fis = addMF(fis,"n","trapmf",[0.7 0.9 1 1],'Name',"VL");

plotmf(fis,"output",1);

rule1 = "If (m is VS) AND (s is S) AND (rho is L), then (n is VS)";
rule2 = "If (m is S) AND (s is S) AND (rho is L), then (n is VS)";
rule3 = "If (m is M) AND (s is S) AND (rho is L), then (n is VS)";
rule4 = "If (m is VS) AND (s is RS) AND (rho is L), then (n is VS)";
rule5 = "If (m is S) AND (s is RS) AND (rho is L), then (n is VS)";
rule6 = "If (m is M) AND (s is RS) AND (rho is L), then (n is VS)";
rule7 = "If (m is VS) AND (s is M) AND (rho is L), then (n is VS)";
rule8 = "If (m is S) AND (s is M) AND (rho is L), then (n is VS)";
rule9 = "If (m is M) AND (s is M) AND (rho is L), then (n is VS)";
rule10 = "If (m is VS) AND (s is RL) AND (rho is L), then (n is S)";
rule11 = "If (m is S) AND (s is RL) AND (rho is L), then (n is S)";
rule12 = "If (m is M) AND (s is RL) AND (rho is L), then (n is VS)";
rule13 = "If (m is VS) AND (s is L) AND (rho is L), then (n is S)";
rule14 = "If (m is S) AND (s is L) AND (rho is L), then (n is S)";
rule15 = "If (m is M) AND (s is L) AND (rho is L), then (n is VS)";
rule16 = "If (m is VS) AND (s is S) AND (rho is M), then (n is S)";
rule17 = "If (m is S) AND (s is S) AND (rho is M), then (n is VS)";
rule18 = "If (m is M) AND (s is S) AND (rho is M), then (n is VS)";
rule19 = "If (m is VS) AND (s is RS) AND (rho is M), then (n is S)";
rule20 = "If (m is S) AND (s is RS) AND (rho is M), then (n is VS)";
rule21 = "If (m is M) AND (s is RS) AND (rho is M), then (n is VS)";
rule22 = "If (m is VS) AND (s is M) AND (rho is M), then (n is RS)";
rule23 = "If (m is S) AND (s is M) AND (rho is M), then (n is S)";
rule24 = "If (m is M) AND (s is M) AND (rho is M), then (n is VS)";
rule25 = "If (m is VS) AND (s is RL) AND (rho is M), then (n is M)";
rule26 = "If (m is S) AND (s is RL) AND (rho is M), then (n is RS)";
rule27 = "If (m is M) AND (s is RL) AND (rho is M), then (n is S)";
rule28 = "If (m is VS) AND (s is L) AND (rho is M), then (n is M)";
rule29 = "If (m is S) AND (s is L) AND (rho is M), then (n is RS)";
rule30 = "If (m is M) AND (s is L) AND (rho is M), then (n is S)";
rule31 = "If (m is VS) AND (s is S) AND (rho is H), then (n is VL)";
rule32 = "If (m is S) AND (s is S) AND (rho is H), then (n is L)";
rule33 = "If (m is M) AND (s is S) AND (rho is H), then (n is M)";
rule34 = "If (m is VS) AND (s is RS) AND (rho is H), then (n is VL)";
rule35 = "If (m is S) AND (s is RS) AND (rho is H), then (n is RL)";
rule36 = "If (m is M) AND (s is RS) AND (rho is H), then (n is RS)";
rule37 = "If (m is VS) AND (s is M) AND (rho is H), then (n is M)";
rule38 = "If (m is S) AND (s is M) AND (rho is H), then (n is M)";
rule39 = "If (m is M) AND (s is M) AND (rho is H), then (n is S)";
rule40 = "If (m is VS) AND (s is RL) AND (rho is H), then (n is RL)";
rule41 = "If (m is S) AND (s is RL) AND (rho is H), then (n is M)";
rule42 = "If (m is M) AND (s is RL) AND (rho is H), then (n is RS)";
rule43 = "If (m is VS) AND (s is L) AND (rho is H), then (n is L)";
rule44 = "If (m is S) AND (s is L) AND (rho is H), then (n is M)";
rule45 = "If (m is M) AND (s is L) AND (rho is H), then (n is RS)";

rules = [rule1 rule2 rule3 rule4 rule5 rule6 rule7 rule8 rule9 rule10 rule11 rule12 rule13 rule14 rule15 rule16 rule17 rule18 rule19 rule20 rule21 rule22 rule23 rule24 rule25 rule26 rule27 rule28 rule29 rule30 rule31 rule32 rule33 rule34 rule35 rule36 rule37 rule38 rule39 rule40 rule41 rule42 rule43 rule44 rule45];

fis = addRule(fis,rules);

fis.Rules

evalfis(fis,[0 1 1]);

plotfis(fis);

surfview(fis);

