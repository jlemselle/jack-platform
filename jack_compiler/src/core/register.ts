import { Int16, one, zero } from "./i16";

export class Register {
  value: Int16 = zero;

  read(): Int16 {
    return this.value;
  }

  write(value: Int16) {
    this.value = value;
  }

  increment() {
    this.value = this.value.add(one);
  }
}
