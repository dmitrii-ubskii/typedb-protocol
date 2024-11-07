# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def typedb_dependencies():
    git_repository(
        name = "typedb_dependencies",
        remote = "https://github.com/dmitrii-ubskii/vaticle-dependencies",
        commit = "666becca712b9b19676c806db123885cc374e221", # sync-marker: do not remove this comment, this is used for sync-dependencies by @typedb_dependencies
    )
