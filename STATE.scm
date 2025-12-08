;;; ==================================================
;;; STATE.scm — AI Conversation Checkpoint File
;;; ==================================================
;;;
;;; SPDX-License-Identifier: MIT
;;; Copyright (c) 2025 Jonathan D.A. Jewell
;;;
;;; STATEFUL CONTEXT TRACKING ENGINE
;;; Version: 2.0
;;;
;;; CRITICAL: Download this file at end of each session!
;;; At start of next conversation, upload it.
;;; Do NOT rely on ephemeral storage to persist.
;;;
;;; ==================================================

(define state
 '((metadata
   (format-version . "2.0")
   (schema-version . "2025-12-08")
   (created-at . "2025-12-08T00:00:00Z")
   (last-updated . "2025-12-08T00:00:00Z")
   (generator . "Claude/STATE-system"))

  (user
   (name . "Jonathan D.A. Jewell")
   (roles . ("maintainer" "architect"))
   (preferences
    (languages-preferred . ("Go" "Rust"))
    (languages-avoid . ())
    (tools-preferred . ("containerd" "nerdctl" "Podman"))
    (values . ("FOSS" "security" "simplicity" "container-native"))))

  (session
   (conversation-id . "019DrNvMrEMAYh3qyuNsG4a6")
   (started-at . "2025-12-08T00:00:00Z")
   (messages-used . 1)
   (messages-remaining . 99)
   (token-limit-reached . #f))

  ;;; ==================================================
  ;;; CURRENT POSITION
  ;;; ==================================================
  ;;; The project is in PRE-DEVELOPMENT SCAFFOLD phase.
  ;;; Only GitHub boilerplate exists:
  ;;;   - MIT License
  ;;;   - Code of Conduct (Contributor Covenant)
  ;;;   - Issue templates (bug, feature, custom)
  ;;;   - CI workflows (CodeQL, Jekyll - misconfigured)
  ;;;   - Dependabot (incomplete)
  ;;;   - SECURITY.md (template placeholders only)
  ;;;   - README.md (empty - just title)
  ;;;
  ;;; NO SOURCE CODE EXISTS YET.
  ;;; NO ARCHITECTURE DEFINED.
  ;;; NO DEPENDENCIES DECLARED.
  ;;; ==================================================

  (focus
   (current-project . "exorcised-nerdctl")
   (current-phase . "pre-development-scaffold")
   (deadline . #f)
   (blocking-projects . ()))

  (projects
   ((name . "exorcised-nerdctl")
    (status . "in-progress")
    (completion . 5)
    (category . "infrastructure")
    (phase . "scaffold")
    (description . "A minimalist fork/variant of nerdctl with specific components removed (exorcised) for a lighter, more focused container CLI")
    (dependencies . ("containerd"))
    (blockers
     ("No architecture decision made"
      "Target language not confirmed (Go assumed from nerdctl)"
      "Scope of 'exorcism' undefined - which nerdctl features to remove?"
      "No build system configured"
      "CI/CD misconfigured for actual development"))
    (next
     ("Define what 'exorcised' means - which features to remove"
      "Confirm Go as implementation language"
      "Create go.mod with module definition"
      "Set up basic CLI skeleton with cobra/urfave"
      "Implement first command (version/info)"))
    (chat-reference . #f)
    (notes . "Appears to be a stripped-down nerdctl variant. Original nerdctl is Docker-compatible CLI for containerd with Compose, rootless, eStargz, OCIcrypt, IPFS support.")))

  ;;; ==================================================
  ;;; ROUTE TO MVP v1
  ;;; ==================================================
  ;;; MVP Goal: Minimal container CLI that can:
  ;;;   1. Connect to containerd
  ;;;   2. Pull images
  ;;;   3. Run containers
  ;;;   4. List/stop/remove containers
  ;;;   5. Basic image management
  ;;;
  ;;; Phase 1: Foundation (Current -> 20%)
  ;;;   - [ ] Define architecture and scope
  ;;;   - [ ] Set up Go module and dependencies
  ;;;   - [ ] Create CLI skeleton
  ;;;   - [ ] Implement containerd client connection
  ;;;
  ;;; Phase 2: Core Commands (20% -> 50%)
  ;;;   - [ ] nerdctl run (basic)
  ;;;   - [ ] nerdctl pull
  ;;;   - [ ] nerdctl images
  ;;;   - [ ] nerdctl ps
  ;;;   - [ ] nerdctl stop/rm
  ;;;
  ;;; Phase 3: Polish (50% -> 80%)
  ;;;   - [ ] Error handling and user feedback
  ;;;   - [ ] Configuration file support
  ;;;   - [ ] Logging and debugging
  ;;;   - [ ] Man pages / help system
  ;;;
  ;;; Phase 4: Release (80% -> 100%)
  ;;;   - [ ] Integration tests
  ;;;   - [ ] CI/CD pipeline
  ;;;   - [ ] Documentation
  ;;;   - [ ] Binary releases
  ;;; ==================================================

  (mvp-roadmap
   ((phase . "foundation")
    (target-completion . 20)
    (tasks
     ("Define architecture document"
      "Create go.mod with containerd client dependency"
      "Set up CLI framework (cobra or urfave/cli)"
      "Implement containerd socket connection"
      "Add version/info command"
      "Configure .gitignore for Go"
      "Fix Dependabot for Go modules"
      "Fix CodeQL for Go analysis")))

   ((phase . "core-commands")
    (target-completion . 50)
    (tasks
     ("Implement 'pull' command"
      "Implement 'images' command"
      "Implement 'run' command (basic)"
      "Implement 'ps' command"
      "Implement 'stop' command"
      "Implement 'rm' command"
      "Implement 'rmi' command")))

   ((phase . "polish")
    (target-completion . 80)
    (tasks
     ("Add comprehensive error messages"
      "Implement config file (~/.config/exorcised-nerdctl/config.toml)"
      "Add --debug flag and logging"
      "Generate help text and usage examples"
      "Add shell completions (bash/zsh/fish)")))

   ((phase . "release")
    (target-completion . 100)
    (tasks
     ("Write integration test suite"
      "Set up GitHub Actions for build/test"
      "Create Makefile with standard targets"
      "Write comprehensive README"
      "Set up GoReleaser for binaries"
      "Create installation instructions"
      "Tag v1.0.0"))))

  ;;; ==================================================
  ;;; ISSUES / BLOCKERS
  ;;; ==================================================

  (issues
   ((id . "ISS-001")
    (severity . "critical")
    (title . "No architecture or design document")
    (description . "Cannot begin implementation without understanding what 'exorcised' means and which nerdctl features to include/exclude")
    (status . "open"))

   ((id . "ISS-002")
    (severity . "high")
    (title . "Misconfigured CI/CD")
    (description . "CodeQL analyzes only 'actions' language, not Go. Jekyll workflow exists but no Jekyll content. Dependabot has empty package-ecosystem.")
    (status . "open"))

   ((id . "ISS-003")
    (severity . "high")
    (title . "Empty documentation")
    (description . "README.md contains only project title. SECURITY.md has template placeholders. No architecture docs, no usage guide.")
    (status . "open"))

   ((id . "ISS-004")
    (severity . "medium")
    (title . "No .gitignore")
    (description . "Missing .gitignore for Go binaries, vendor directory, IDE files, etc.")
    (status . "open"))

   ((id . "ISS-005")
    (severity . "medium")
    (title . "Custom issue template empty")
    (description . ".github/ISSUE_TEMPLATE/custom.md is blank")
    (status . "open")))

  ;;; ==================================================
  ;;; QUESTIONS FOR MAINTAINER
  ;;; ==================================================

  (questions
   ((id . "Q-001")
    (priority . "critical")
    (question . "What does 'exorcised' mean in this context?")
    (context . "Original nerdctl has many features: Compose, rootless, eStargz, OCIcrypt, IPFS, CNI networking, BuildKit integration. Which features should be REMOVED to create exorcised-nerdctl?")
    (options
     ("Remove Compose support"
      "Remove IPFS support"
      "Remove OCIcrypt (image encryption)"
      "Remove eStargz (lazy pulling)"
      "Remove rootless mode"
      "Remove BuildKit integration"
      "Remove CNI and use simpler networking"
      "All of the above - bare minimum only")))

   ((id . "Q-002")
    (priority . "high")
    (question . "Confirm Go as the implementation language?")
    (context . "Original nerdctl is written in Go. Should exorcised-nerdctl also be Go, or would you prefer Rust for memory safety?")
    (default . "Go"))

   ((id . "Q-003")
    (priority . "high")
    (question . "What is the target user/use case?")
    (context . "Understanding the target helps prioritize features")
    (options
     ("Minimal container runtime for embedded/IoT"
      "Simplified CLI for learning containers"
      "Lightweight alternative for CI/CD pipelines"
      "Base for custom container tooling"
      "Security-focused minimal attack surface")))

   ((id . "Q-004")
    (priority . "medium")
    (question . "Should this maintain CLI compatibility with nerdctl/docker?")
    (context . "If yes, commands like 'run', 'pull', 'ps' should have same flags. If no, we can simplify the interface.")
    (default . "Partial compatibility for common commands"))

   ((id . "Q-005")
    (priority . "medium")
    (question . "Rootless support - include or exclude?")
    (context . "Rootless containers are more secure but add complexity. Original nerdctl supports rootless via RootlessKit.")
    (default . "Exclude for MVP, consider for v2"))

   ((id . "Q-006")
    (priority . "low")
    (question . "Preferred CLI framework?")
    (context . "Go CLI frameworks available")
    (options
     ("cobra (used by kubectl, docker)"
      "urfave/cli (used by original nerdctl)"
      "kong"
      "No preference"))))

  ;;; ==================================================
  ;;; LONG-TERM ROADMAP
  ;;; ==================================================

  (roadmap
   ((version . "v0.1.0")
    (codename . "skeleton")
    (status . "not-started")
    (goals
     ("Project scaffold complete"
      "CI/CD working"
      "Can connect to containerd"
      "Version command works")))

   ((version . "v0.5.0")
    (codename . "crawl")
    (status . "not-started")
    (goals
     ("Pull images from registries"
      "Run basic containers"
      "List running containers"
      "Stop and remove containers")))

   ((version . "v1.0.0")
    (codename . "walk")
    (status . "not-started")
    (goals
     ("MVP feature complete"
      "Stable CLI interface"
      "Documentation complete"
      "Binary releases available"
      "Installation via package managers")))

   ((version . "v1.5.0")
    (codename . "run")
    (status . "not-started")
    (goals
     ("Volume mounts"
      "Environment variable handling"
      "Port mapping"
      "Container logs"
      "Container exec")))

   ((version . "v2.0.0")
    (codename . "sprint")
    (status . "not-started")
    (goals
     ("Rootless mode (optional)"
      "Multi-platform image support"
      "Registry authentication"
      "Image build (basic)"
      "Plugin system"))))

  (critical-next
   ("DECISION NEEDED: Define 'exorcised' scope - which features to remove"
    "DECISION NEEDED: Confirm Go as implementation language"
    "Create go.mod once decisions made"
    "Write ARCHITECTURE.md documenting design decisions"
    "Implement basic CLI skeleton"))

  (history
   (snapshots
    ((timestamp . "2025-12-08")
     (project . "exorcised-nerdctl")
     (completion . 5)
     (notes . "Initial STATE.scm created. Project is scaffold-only."))))

  (files-created-this-session
   ("STATE.scm"))

  (files-modified-this-session ())

  (context-notes . "Project is at absolute beginning. Need architectural decisions before any implementation can begin. Key question: what exactly is being 'exorcised' from nerdctl?")))

;;; ==================================================
;;; QUICK REFERENCE
;;; ==================================================
;;;
;;; Current Status: PRE-DEVELOPMENT (5% complete)
;;; Blockers: Architecture undefined, scope unclear
;;; Next Action: Answer Q-001 (what to exorcise)
;;;
;;; To resume work:
;;; 1. Upload this file at conversation start
;;; 2. Review (questions) section
;;; 3. Provide answers to critical questions
;;; 4. Claude will proceed with implementation
;;;
;;; ==================================================
