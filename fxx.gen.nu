let bin_dir = [$env.FILE_PWD, ".", "src", "bin"] | path join
let template = $bin_dir | path join "fxx.rs.template"
let template = open $template

for $f in 13..24 {
  let source_path = $bin_dir | path join $"f($f).rs"
  $template | str replace "{FXX}" $"F($f)" | save $source_path -f
}
