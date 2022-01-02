#!/usr/bin/perl
$host = shift;
$instance = shift;
$arg = shift;

#### random sleep, rand() can be a fraction of second
select(undef,undef,undef,rand());

if ($arg) {
  @ids = split(/,/, $arg);
}
else {
  while(1) {
    if (opendir(DDIR, "1641132471.fas.0-seq")) { 
      @ids = grep {/^\d+$/} readdir(DDIR);
      last;
    }
    else {
      sleep(1);
    }
  }
}

foreach $id (@ids) {

  next unless (-e "1641132471.fas.0-seq/$id");
  next if (-e "1641132471.fas.0-seq/$id.lock");
  $cmd = `touch 1641132471.fas.0-seq/$id.lock`;

  if (50) {
    $cmd = `/data5/data/NGS-ann-project/apps/blast+/bin/blastp -outfmt 6 -db ./1641132471.fas.0.54766 -seg yes -evalue 0.000001 -max_target_seqs 100000 -num_threads 1 -query 1641132471.fas.0-seq/$id -out 1641132471.fas.0-bl/$id`;
    $cmd =                         `/data5/data/NGS-ann-project/apps/cd-hit/psi-cd-hit/psi-cd-hit.pl -J parse_blout_multi 1641132471.fas.0-bl/$id -c 0.1 -ce -1 -aS 0 -aL 0 -G 1 -prog blastp -bs 0 >> 1641132471.fas.0-blm/$host.$instance`;
  }
  elsif (1) {
    $cmd = `/data5/data/NGS-ann-project/apps/blast+/bin/blastp -outfmt 6 -db ./1641132471.fas.0.54766 -seg yes -evalue 0.000001 -max_target_seqs 100000 -num_threads 1 -query 1641132471.fas.0-seq/$id | /data5/data/NGS-ann-project/apps/cd-hit/psi-cd-hit/psi-cd-hit.pl -J parse_blout 1641132471.fas.0-bl/$id -c 0.1 -ce -1 -aS 0 -aL 0 -G 1 -prog blastp -bs 1`;
  }
  else {
    $cmd = `/data5/data/NGS-ann-project/apps/blast+/bin/blastp -outfmt 6 -db ./1641132471.fas.0.54766 -seg yes -evalue 0.000001 -max_target_seqs 100000 -num_threads 1 -query 1641132471.fas.0-seq/$id -out 1641132471.fas.0-bl/$id`;
    $cmd =                         `/data5/data/NGS-ann-project/apps/cd-hit/psi-cd-hit/psi-cd-hit.pl -J parse_blout 1641132471.fas.0-bl/$id -c 0.1 -ce -1 -aS 0 -aL 0 -G 1 -prog blastp -bs 0`;
  }
  $cmd = `rm -f  1641132471.fas.0-seq/$id`;
  $cmd = `rm -f  1641132471.fas.0-seq/$id.lock`;
}

($tu, $ts, $cu, $cs) = times();
$tt = $tu + $ts + $cu + $cs;
$cmd = `echo $tt >> 1641132471.fas.0-seq/host.$host.$instance.cpu`;

