# Verilog Git Cheat Sheet

## Git Workflow

```bash
git add .
git commit -m "Add <Project Name> implementation and waveform"
git pull --rebase origin main
git push origin main
```

---

## Compile

```bash
iverilog -o output_sim rtl/file.v tb/file_tb.v
```

Example:

```bash
iverilog -o half_adder_sim \
04-Adders-Subtractors/rtl/half_adder.v \
04-Adders-Subtractors/tb/half_adder_tb.v
```

---

## Run Simulation

```bash
vvp output_sim
```

---

## Open GTKWave

```bash
gtkwave output.vcd
```

---

## Check Git Status

```bash
git status
```

---

## View Folder Structure

```bash
ls -R
```