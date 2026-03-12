# Terraform “command not found” in Git Bash – Fix Notes

## Problem

When running Terraform in Git Bash:

```
terraform --version
terraform init
```

Error appears:

```
bash: terraform: command not found
```

This happens even though `terraform.exe` is installed in:

```
C:\terraform
```

The reason is **Git Bash cannot automatically detect the Windows PATH**.

---

# Temporary Fix (Works Only for Current Terminal)

Run:

```
export PATH=$PATH:/c/terraform
```

Then check:

```
terraform --version
```

Output should be something like:

```
Terraform v1.14.6
```

⚠️ Problem:
When you close Git Bash, this fix disappears.

---

# Permanent Fix (Recommended)

### Step 1 — Open Git Bash

Run:

```
nano ~/.bashrc
```

---

### Step 2 — Add Terraform Path

Add this line at the bottom:

```
export PATH=$PATH:/c/terraform
```

---

### Step 3 — Save File

Press:

```
CTRL + O
ENTER
CTRL + X
```

---

### Step 4 — Reload Bash Configuration

Run:

```
source ~/.bashrc
```

---

### Step 5 — Verify

Run:

```
terraform --version
```

Expected output:

```
Terraform v1.14.6
```

---

# Terraform Basic Commands

Once Terraform works, the normal workflow is:

```
terraform init
terraform plan
terraform apply
```

---

# Key Point

Git Bash uses **Linux-style paths**, so:

Windows path:

```
C:\terraform
```

Git Bash path:

```
/c/terraform
```

That is why we add:

```
export PATH=$PATH:/c/terraform
```
