if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Bot-Bucket/File-Store-Bot-BD /File-Store-Bot-BD
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /File-Store-Bot-BD
fi
cd /File-Store-Bot-BD
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
