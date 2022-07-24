<!-- [[[cog
import subprocess

import cog
# result
result=subprocess.run(["../quickemu", "--help"], capture_output=True, text=True)
help=result.stdout
debug=result.stderr
#print("stdout:", result.stdout)
#print("stderr:", result.stderr)
cog.out(f"```\n{help}\n```\n\n")
#cog.out(f"\n{help}\n\n")
#--------\n#DBG {debug}")
]]] -->

The output goes here

<!-- [[[end]]] -->
