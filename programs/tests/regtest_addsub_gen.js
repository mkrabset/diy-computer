console.log("NOP")
console.log("NOP")
console.log("NOP")
console.log("start:")
console.log("LDX #00");
console.log("STX checksum");

function toHex(n) {
    const r = ("000000000" + n.toString(16))
    return r.substring(r.length - 2)
}

var lbl = 0

function genTest(op, calc) {
    const regs = ['X', 'Y', 'Z']
    console.log(op + "test:");
    for (var x = 0; x < 16; x++) {
        for (var y = 0; y < 16; y++) {
            const a=x*4;
            const b=y;
            regs.forEach(reg => {
                lbl++;
                console.log("CLC");
                console.log("LD" + reg + " #" + toHex(a));
                console.log(op + reg + " #" + toHex(b));
                if (a+b>=256) {
                    console.log("BCC trap"+lbl);
                } else {
                    console.log("BCS trap"+lbl);
                }
                console.log("CMP" + reg + " #" + toHex(calc(a,b)))
                console.log("BNE trap" + lbl);
                console.log("JMP notrap"+lbl);
                console.log("trap" + lbl + ":");
                console.log("JMP trap"+lbl);
                console.log("notrap" + lbl + ":");
                console.log("INC checksum");
                console.log("LD" + reg + " checksum");
                console.log("OUT0 "+reg);
                console.log("");
            })
        }
    }
}

//genTest("AND", (a, b) => a & b)
//genTest("OR", (a, b) => a | b)
genTest("ADD", (a, b) => (a + b) % 256)


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