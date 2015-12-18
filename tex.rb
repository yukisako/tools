# texファイルをpandocで変換した時の\tightlistを消すrubyスクリプト
# mdtex.sh で呼び出されるため，置いておくだけでいい


f_name = ARGV[0].to_s
f=File.open(f_name,"r")
buffer = f.read();
buffer.gsub!("\\tightlist" , "\n");
f=File.open(f_name,"w")
f.write(buffer)
f.close()
puts "正常にファイル編集が終了しました"
