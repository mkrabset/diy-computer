console.log("NOP")
console.log("NOP")
console.log("NOP")
console.log("start:")

function toHex(n) {
    const r = ("000000000" + n.toString(16))
    return r.substring(r.length - 2)
}

var lbl = 0

function genTest(op, calc) {
    console.log(op + "test:");
    for (var x = 0; x < 256; x++) {
        const a = x;
        lbl++;
        console.log("LDX #" + toHex(a));
        console.log("STX operand");
        console.log("NOT operand");
        console.log("LDX operand");
        console.log("CMPX #" + toHex(((~a % 256) + 256)))
        console.log("trap" + lbl + ":");
        console.log("BNE trap" + lbl);
        console.log("OUT0 X");
        console.log("");
    }
}

genTest("XOR", (a, b) => a ^ b)

console.log("done:");
console.log("OUT1 X");
console.log("INC repetitions");
console.log("BNE skiprep2");
console.log("INC repetitions2");
console.log("skiprep2:");
console.log("LDX repetitions");
console.log("OUT2 X");
console.log("LDX repetitions2");
console.log("OUT3 X");
console.log("JMP start");
console.log("");
console.log("repetitions:")
console.log("B 0x 00");
console.log("repetitions2:")
console.log("B 0x 00");
console.log("operand:")
console.log("B 0x 00");
