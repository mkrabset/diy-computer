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
    const regs = ['X', 'Y', 'Z']
    console.log(op + "test:");
    for (var x = 0; x < 256; x++) {
        const a = x;
        regs.forEach(reg => {
            lbl++;
            console.log("LD" + reg + " #" + toHex(a));
            console.log("NOT"+ reg);
            console.log("trap" + lbl + ":");
            console.log("INC checksum");
            console.log("CMP" + reg + " #" + toHex(((~a%256)+256)))
            console.log("BNE trap" + lbl);
            console.log("LD" + reg + " checksum");
            console.log("OUT0 " + reg);
            console.log("PUSH " + reg);
            console.log("JSR sub");
            console.log("POP " + reg);
            console.log("");
        })
    }
}

//genTest("AND", (a, b) => a & b)
//genTest("OR", (a, b) => a | b)
genTest("XOR", (a, b) => a ^ b)


console.log("done:");
console.log("LDX checksum");
console.log("OUT0 X");
console.log("CMPX #00");
console.log("BNE stop");
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
console.log("sub:");
console.log("RTS");
console.log("");
console.log("stop:");
console.log("JMP stop");
console.log("");
console.log("repetitions:")
console.log("B 0x 00");
console.log("repetitions2:")
console.log("B 0x 00");

console.log("checksum:");
console.log("B 0x 00");