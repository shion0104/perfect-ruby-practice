# ライブラリ:fiber
# Fiberを利用することで複数のプログラム間で実行の中断や再開を相互に行わせることができる


ファイル・ディレクトリの操作

Pathname

path = Pathname.new("/usr/local/bin")
puts path.basename    # => "bin"
puts path.dirname     # => "/usr/local"
puts path.extname     # => "" （拡張子がないため空文字）
puts path.parent      # => "/usr/local"

basename : 最後のファイルまたはディレクトリ名を取得
dirname : 親ディレクトリのパスを取得
extname : 拡張子を取得
parent : 親ディレクトリの Pathname オブジェクトを返す
children : ディレクトリ内のファイルとディレクトリの一覧を Pathname オブジェクトとして返す



FileUtils

FileUtils.mkdir("test_dir")          # ディレクトリ作成
FileUtils.touch("test_dir/file.txt")  # 空のファイル作成
FileUtils.cp("test_dir/file.txt", "test_dir/file_copy.txt")  # ファイルコピー
FileUtils.mv("test_dir/file_copy.txt", "test_dir/file_renamed.txt")  # ファイル名変更
FileUtils.rm("test_dir/file.txt")     # ファイル削除
FileUtils.rmdir("test_dir")           # 空のディレクトリを削除

mkdir : ディレクトリの作成
touch : ファイルの作成
cp : ファイルやディレクトリのコピー
mv : ファイルやディレクトリの移動（または名前変更）
rm, rm_r : ファイルやディレクトリの削除
chmod : ファイルやディレクトリのパーミッション変更



Tmpdir

Dir.mktmpdir do |dir|
    puts "Temporary directory created at: #{dir}"
    # dir には一時ディレクトリのパスが格納される
  end
  # ブロックを抜けると一時ディレクトリは自動的に削除される

Dir.tmpdir : 一時ディレクトリのパスを取得
Dir.mktmpdir : 一時ディレクトリを作成し、ブロックの中で利用可能



Tempfile

Tempfile.create('my_tempfile') do |file|
    file.write("Temporary content")
    puts "Temporary file created at: #{file.path}"
  end
  # ブロックが終了すると一時ファイルは自動的に削除される

Tempfile.create : 一時ファイルを作成し、ブロック内で利用可能
#write : ファイルに内容を書き込み
#read : ファイルから内容を読み込み
#path : 一時ファイルのパスを取得