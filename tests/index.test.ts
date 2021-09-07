import { add, multiply, subtract } from "../src/index";

describe("test add function", () => {
  it("should return 15 for add(10, 5)", () => {
    expect(add(10, 5)).toBe(15);
  });
});

describe("test subtract function", () => {
  it("should return 5 for subtract(10, 5)", () => {
    expect(subtract(10, 5)).toBe(5);
  });
});

describe("test multiply function", () => {
  it("should return 50 for multiply(10, 5)", () => {
    expect(multiply(10, 5)).toBe(50);
  });
});

describe("test multiply function hi", () => {
  it("should return 50 for multiply(10, 5)", () => {
    expect(multiply(10, 5)).toBe(5);
  });
});

