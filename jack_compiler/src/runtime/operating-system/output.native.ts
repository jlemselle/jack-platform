import { MathNative } from "./math.native";
import { MemoryNative } from "./memory.native";
import { StringNative } from "./string.native";

/**
 * A library of functions for writing text on the screen.
 * The Hack physical screen consists of 512 rows of 256 pixels each.
 * The library uses a fixed font, in which each character is displayed
 * within a frame which is 11 pixels high (including 1 pixel for inter-line
 * spacing) and 8 pixels wide (including 2 pixels for inter-character spacing).
 * The resulting grid accommodates 23 rows (indexed 0..22, top to bottom)
 * of 64 characters each (indexed 0..63, left to right). The top left
 * character position on the screen is indexed (0,0). A cursor, implemented
 * as a small filled square, indicates where the next character will be displayed.
 */
export class OutputNative {
  // Character map for displaying characters
  charMaps: number[][];
  cursorX: number;
  cursorY: number;

  constructor(
    private math: MathNative,
    private memory: MemoryNative,
    private string: StringNative
  ) {
    this.charMaps = [];
    this.initMap();
    this.cursorX = 0;
    this.cursorY = 0;
  }

  // Initializes the character map array
  initMap(): number {
    // Black square, used for displaying non-printable characters.
    this.create(0, 63, 63, 63, 63, 63, 63, 63, 63, 63, 0, 0);

    // Assigns the bitmap for each character in the charachter set.
    // The first parameter is the character index, the next 11 numbers
    // are the values of each row in the frame that represents this character.
    this.create(32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0); //
    this.create(33, 12, 30, 30, 30, 12, 12, 0, 12, 12, 0, 0); // !
    this.create(34, 54, 54, 20, 0, 0, 0, 0, 0, 0, 0, 0); // "
    this.create(35, 0, 18, 18, 63, 18, 18, 63, 18, 18, 0, 0); // #
    this.create(36, 12, 30, 51, 3, 30, 48, 51, 30, 12, 12, 0); // $
    this.create(37, 0, 0, 35, 51, 24, 12, 6, 51, 49, 0, 0); // %
    this.create(38, 12, 30, 30, 12, 54, 27, 27, 27, 54, 0, 0); // &
    this.create(39, 12, 12, 6, 0, 0, 0, 0, 0, 0, 0, 0); // '
    this.create(40, 24, 12, 6, 6, 6, 6, 6, 12, 24, 0, 0); // (
    this.create(41, 6, 12, 24, 24, 24, 24, 24, 12, 6, 0, 0); // )
    this.create(42, 0, 0, 0, 51, 30, 63, 30, 51, 0, 0, 0); // *
    this.create(43, 0, 0, 0, 12, 12, 63, 12, 12, 0, 0, 0); // +
    this.create(44, 0, 0, 0, 0, 0, 0, 0, 12, 12, 6, 0); // ,
    this.create(45, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0); // -
    this.create(46, 0, 0, 0, 0, 0, 0, 0, 12, 12, 0, 0); // .
    this.create(47, 0, 0, 32, 48, 24, 12, 6, 3, 1, 0, 0); // /

    this.create(48, 12, 30, 51, 51, 51, 51, 51, 30, 12, 0, 0); // 0
    this.create(49, 12, 14, 15, 12, 12, 12, 12, 12, 63, 0, 0); // 1
    this.create(50, 30, 51, 48, 24, 12, 6, 3, 51, 63, 0, 0); // 2
    this.create(51, 30, 51, 48, 48, 28, 48, 48, 51, 30, 0, 0); // 3
    this.create(52, 16, 24, 28, 26, 25, 63, 24, 24, 60, 0, 0); // 4
    this.create(53, 63, 3, 3, 31, 48, 48, 48, 51, 30, 0, 0); // 5
    this.create(54, 28, 6, 3, 3, 31, 51, 51, 51, 30, 0, 0); // 6
    this.create(55, 63, 49, 48, 48, 24, 12, 12, 12, 12, 0, 0); // 7
    this.create(56, 30, 51, 51, 51, 30, 51, 51, 51, 30, 0, 0); // 8
    this.create(57, 30, 51, 51, 51, 62, 48, 48, 24, 14, 0, 0); // 9

    this.create(58, 0, 0, 12, 12, 0, 0, 12, 12, 0, 0, 0); // :
    this.create(59, 0, 0, 12, 12, 0, 0, 12, 12, 6, 0, 0); // ;
    this.create(60, 0, 0, 24, 12, 6, 3, 6, 12, 24, 0, 0); // <
    this.create(61, 0, 0, 0, 63, 0, 0, 63, 0, 0, 0, 0); // =
    this.create(62, 0, 0, 3, 6, 12, 24, 12, 6, 3, 0, 0); // >
    this.create(64, 30, 51, 51, 59, 59, 59, 27, 3, 30, 0, 0); // @
    this.create(63, 30, 51, 51, 24, 12, 12, 0, 12, 12, 0, 0); // ?

    this.create(65, 12, 30, 51, 51, 51, 63, 51, 51, 51, 0, 0); // A
    this.create(66, 31, 51, 51, 51, 31, 51, 51, 51, 31, 0, 0); // B
    this.create(67, 28, 54, 35, 3, 3, 3, 35, 54, 28, 0, 0); // C
    this.create(68, 15, 27, 51, 51, 51, 51, 51, 27, 15, 0, 0); // D
    this.create(69, 63, 51, 35, 11, 15, 11, 35, 51, 63, 0, 0); // E
    this.create(70, 63, 51, 35, 11, 15, 11, 3, 3, 3, 0, 0); // F
    this.create(71, 28, 54, 35, 3, 59, 51, 51, 54, 44, 0, 0); // G
    this.create(72, 51, 51, 51, 51, 63, 51, 51, 51, 51, 0, 0); // H
    this.create(73, 30, 12, 12, 12, 12, 12, 12, 12, 30, 0, 0); // I
    this.create(74, 60, 24, 24, 24, 24, 24, 27, 27, 14, 0, 0); // J
    this.create(75, 51, 51, 51, 27, 15, 27, 51, 51, 51, 0, 0); // K
    this.create(76, 3, 3, 3, 3, 3, 3, 35, 51, 63, 0, 0); // L
    this.create(77, 33, 51, 63, 63, 51, 51, 51, 51, 51, 0, 0); // M
    this.create(78, 51, 51, 55, 55, 63, 59, 59, 51, 51, 0, 0); // N
    this.create(79, 30, 51, 51, 51, 51, 51, 51, 51, 30, 0, 0); // O
    this.create(80, 31, 51, 51, 51, 31, 3, 3, 3, 3, 0, 0); // P
    this.create(81, 30, 51, 51, 51, 51, 51, 63, 59, 30, 48, 0); // Q
    this.create(82, 31, 51, 51, 51, 31, 27, 51, 51, 51, 0, 0); // R
    this.create(83, 30, 51, 51, 6, 28, 48, 51, 51, 30, 0, 0); // S
    this.create(84, 63, 63, 45, 12, 12, 12, 12, 12, 30, 0, 0); // T
    this.create(85, 51, 51, 51, 51, 51, 51, 51, 51, 30, 0, 0); // U
    this.create(86, 51, 51, 51, 51, 51, 30, 30, 12, 12, 0, 0); // V
    this.create(87, 51, 51, 51, 51, 51, 63, 63, 63, 18, 0, 0); // W
    this.create(88, 51, 51, 30, 30, 12, 30, 30, 51, 51, 0, 0); // X
    this.create(89, 51, 51, 51, 51, 30, 12, 12, 12, 30, 0, 0); // Y
    this.create(90, 63, 51, 49, 24, 12, 6, 35, 51, 63, 0, 0); // Z

    this.create(91, 30, 6, 6, 6, 6, 6, 6, 6, 30, 0, 0); // [
    this.create(92, 0, 0, 1, 3, 6, 12, 24, 48, 32, 0, 0); // \
    this.create(93, 30, 24, 24, 24, 24, 24, 24, 24, 30, 0, 0); // ]
    this.create(94, 8, 28, 54, 0, 0, 0, 0, 0, 0, 0, 0); // ^
    this.create(95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0); // _
    this.create(96, 6, 12, 24, 0, 0, 0, 0, 0, 0, 0, 0); // `

    this.create(97, 0, 0, 0, 14, 24, 30, 27, 27, 54, 0, 0); // a
    this.create(98, 3, 3, 3, 15, 27, 51, 51, 51, 30, 0, 0); // b
    this.create(99, 0, 0, 0, 30, 51, 3, 3, 51, 30, 0, 0); // c
    this.create(100, 48, 48, 48, 60, 54, 51, 51, 51, 30, 0, 0); // d
    this.create(101, 0, 0, 0, 30, 51, 63, 3, 51, 30, 0, 0); // e
    this.create(102, 28, 54, 38, 6, 15, 6, 6, 6, 15, 0, 0); // f
    this.create(103, 0, 0, 30, 51, 51, 51, 62, 48, 51, 30, 0); // g
    this.create(104, 3, 3, 3, 27, 55, 51, 51, 51, 51, 0, 0); // h
    this.create(105, 12, 12, 0, 14, 12, 12, 12, 12, 30, 0, 0); // i
    this.create(106, 48, 48, 0, 56, 48, 48, 48, 48, 51, 30, 0); // j
    this.create(107, 3, 3, 3, 51, 27, 15, 15, 27, 51, 0, 0); // k
    this.create(108, 14, 12, 12, 12, 12, 12, 12, 12, 30, 0, 0); // l
    this.create(109, 0, 0, 0, 29, 63, 43, 43, 43, 43, 0, 0); // m
    this.create(110, 0, 0, 0, 29, 51, 51, 51, 51, 51, 0, 0); // n
    this.create(111, 0, 0, 0, 30, 51, 51, 51, 51, 30, 0, 0); // o
    this.create(112, 0, 0, 0, 30, 51, 51, 51, 31, 3, 3, 0); // p
    this.create(113, 0, 0, 0, 30, 51, 51, 51, 62, 48, 48, 0); // q
    this.create(114, 0, 0, 0, 29, 55, 51, 3, 3, 7, 0, 0); // r
    this.create(115, 0, 0, 0, 30, 51, 6, 24, 51, 30, 0, 0); // s
    this.create(116, 4, 6, 6, 15, 6, 6, 6, 54, 28, 0, 0); // t
    this.create(117, 0, 0, 0, 27, 27, 27, 27, 27, 54, 0, 0); // u
    this.create(118, 0, 0, 0, 51, 51, 51, 51, 30, 12, 0, 0); // v
    this.create(119, 0, 0, 0, 51, 51, 51, 63, 63, 18, 0, 0); // w
    this.create(120, 0, 0, 0, 51, 30, 12, 12, 30, 51, 0, 0); // x
    this.create(121, 0, 0, 0, 51, 51, 51, 62, 48, 24, 15, 0); // y
    this.create(122, 0, 0, 0, 63, 27, 12, 6, 51, 63, 0, 0); // z

    this.create(123, 56, 12, 12, 12, 7, 12, 12, 12, 56, 0, 0); // {
    this.create(124, 12, 12, 12, 12, 12, 12, 12, 12, 12, 0, 0); // |
    this.create(125, 7, 12, 12, 12, 56, 12, 12, 12, 7, 0, 0); // }
    this.create(126, 38, 45, 25, 0, 0, 0, 0, 0, 0, 0, 0); // ~

    return 0;
  }

  // Creates the character map array of the given character index, using the given values.
  create(
    index: number,
    a: number,
    b: number,
    c: number,
    d: number,
    e: number,
    f: number,
    g: number,
    h: number,
    i: number,
    j: number,
    k: number
  ) {
    this.charMaps[index] = [a, b, c, d, e, f, g, h, i, j, k];
  }

  // Returns the character map (array of size 11) of the given character.
  // If the given character is invalid or non-printable, returns the
  // character map of a black square.
  getMap(c: number): number[] {
    if (c < 32 || c > 126) {
      c = 0;
    }
    return this.charMaps[c];
  }

  /** Moves the cursor to the j-th column of the i-th row,
   *  and erases the character displayed there. */
  moveCursor(i: number, j: number): number {
    this.cursorX = i;
    this.cursorY = j;
    return 0;
  }

  /** Displays the given character at the cursor location,
   *  and advances the cursor one column forward. */
  printCharImpl(c: number) {
    let map = this.getMap(c);
    let offset =
      16384 +
      this.math.divide(this.cursorX, 2) +
      this.math.multiply(this.cursorY, 352);
    let odd = this.math.bit(this.cursorX, 0);
    for (let i = 0; i < 11; i++) {
      let index = offset + this.math.multiply(i, 32);
      if (odd) {
        let current = this.memory.peek(index) & 255;
        this.memory.poke(index, (map[i] << 8) | current);
      } else {
        let current = this.memory.peek(index) & ~255;
        this.memory.poke(index, map[i] | current);
      }
    }
  }

  printChar(c: number): number {
    if (c === this.string.newLine()) {
      this.println();
      return 0;
    }

    if (c === this.string.backSpace()) {
      return 0;
    }

    this.printCharImpl(c);

    this.cursorX = this.cursorX + 1;
    if (this.cursorX > 63) {
      this.println();
    }

    return 0;
  }

  /** displays the given string starting at the cursor location,
   *  and advances the cursor appropriately. */
  printString(s: number): number {
    for (let i = 0; i < this.string.length(s); i++) {
      this.printChar(this.string.charAt(s, i));
    }
    return 0;
  }

  /** Displays the given integer starting at the cursor location,
   *  and advances the cursor appropriately. */
  printInt(i: number): number {
    let str = this.string.ctor(6);
    this.string.setInt(str, i);
    this.printString(str);
    return 0;
  }

  /** Advances the cursor to the beginning of the next line. */
  println(): number {
    this.printCharImpl(32);
    this.cursorX = 0;
    this.cursorY = this.cursorY + 1;
    if (this.cursorY > 22) {
      this.scroll();
      this.cursorY = 22;
    }
    return 0;
  }

  scroll() {
    const screenStart = 16384;
    const screenLength = 8192;
    for (let i = 0; i < screenLength; i += 1) {
      let destPtr = screenStart + i;
      let sourcePtr = destPtr + 32 * 11;
      if (sourcePtr > screenStart + screenLength) {
        this.memory.poke(destPtr, 0);
      } else {
        this.memory.poke(destPtr, this.memory.peek(sourcePtr));
      }
    }
  }

  /** Moves the cursor one column back. */
  backSpace(): number {
    if (this.cursorX > 0) {
      this.printCharImpl(32);
      this.cursorX = this.cursorX - 1;
      this.printCharImpl(32);
    }
    return 0;
  }

  /** Display cursor. */
  displayCursor(): number {
    this.printCharImpl(0);
    return 0;
  }
}
