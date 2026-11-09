import random, subprocess, os
exe = os.path.abspath("sum.exe")
for k in range(3):
    n = random.randint(1, 100000)
    out = subprocess.run([exe], input=f"{n}\n", capture_output=True, text=True).stdout
    got = int(out.split()[-1])
    exp = n * (n + 1) // 2
    print(f"Test {k+1}: N={n}, program={got}, expected={exp}, {'PASS' if got == exp else 'FAIL'}")
