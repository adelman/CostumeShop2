task :create_costumes => :environment do
  cat = ["shirt", "pants", "jacket", "coat", "slacks", "socks", "hat", "tie"]
  pri = ["red", "yellow", "green", "blue", "white", "black", "pink", "purple"]
  sec = ["plaid", "striped", "checked", "gray", "pin", "dots"]
  per = ["1910s", "1920s", "1930s", "1940s", "1950s", "1960s", "timeless"]
  lab = ["", "Ralph", "Marc", "Gucci", "", "", "Fancy"]

  50.times do |n|
    cid = (rand * 100000).floor
    category = cat.sample
    primary = pri.sample
    secondary = sec.sample
    period = per.sample
    label = lab.sample
    Costume.create!(cid: cid, category: category, primary: primary, secondary: secondary, period: period, label: label)
  end
end
