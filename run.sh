# make sure we're running latest version of the playit program
apt update
apt install -y playit

playit --stdout --secret_path /secrets/playit.toml
