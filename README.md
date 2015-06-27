# rzicon (Ruby + 2zicon)

All about Worldwide idol "2zicon".

Inspired by [Acme::2zicon](https://metacpan.org/source/CATATSUY/Acme-2zicon-0.1/) and [rubicure](https://github.com/sue445/rubicure)

## Usage

```ruby
Nizicon.name
#=> "虹のコンキスタドール"

Nizicon.from
#=> "つくドル！プロジェクト"

Nizicon.members.map(&:name)
#=> ["長田 美成", "重松 佑佳", "奥村 野乃花", "木下 ひより", "陶山 恵実里", "中村 朱里", "西 七海", "根本 凪", "的場 華鈴", "吉村 菜々", "鶴見 萌"]

Nizicon.members.map(&:nickname)
#=> ["みなりん", "しげちー", "ののた", "ひよりん", "えみりぃ", "あかりん", "ななぴ", "ねも", "かりんさま", "なぁな", "もえ"]

Nizicon.members.sample
=> #<Nizicon::Member:0x007ff23ab12590
 @birthday=#<Date: 1999-03-15 ((2451253j,0s,0n),+0s,2299161j)>,
 @blog_uri="http://ameblo.jp/2zicon/theme-10083290733.html",
 @head_shot_uri="http://pixiv-pro.com/2zicon/wp-content/uploads/2014/07/nemoto-600x620.jpg",
 @hometown="茨城県",
 @id=8,
 @introduction="みんなのハートを\#{nickname}色に染めちゃってもよかっぺか？\n＼ぺー！／\n茨城県出身世間知らずの16歳。\nねもこと根本 凪です。",
 @name="根本 凪",
 @nickname="ねも",
 @pixiv_id=11797412,
 @reguler_member=true,
 @twitter_id="@nemoto_nagi">
```

more member information: https://github.com/bash0C7/rzicon/blob/master/data/2zicon.yml

## Change Log

### Version 0.0.5

Add member head shot uri

### Version 0.0.4

Add Tsurumi Moe introduction

### Version 0.0.3

Join Tsurumi Moe

### Version 0.0.2

Support <member>#to_hash

### Version 0.0.1

Fix some issues.
Impl some features.

### Version 0.0.0

first version
