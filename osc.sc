o = OSCresponderNode(nil, "/test", { arg time, responder, msg;
	"message receive:".postln;
	msg.postln;
}).add;

