# rzicon (Ruby + 2zicon)

All about Worldwide idol "2zicon".

Inspired by [Acme::2zicon](https://metacpan.org/source/CATATSUY/Acme-2zicon-0.1/) and [rubicure](https://github.com/sue445/rubicure)

## Usage

```ruby
Nizicon.name
#=> "虹のコンキスタドール"

Nizicon.from
#=> "つくドル！プロジェクト"

Nizicon.members.each{|m| puts m.name}
長田 美成
重松 佑佳
奥村 野乃花
木下 ひより
陶山 恵実里
中村 朱里
西 七海
根本 凪
的場 華鈴
吉村 菜々
=> [#<Nizicon::Members::NagataMinari:0x00000000000000>,
 #<Nizicon::Members::ShigematsuYuka:0x00000000000000>,
 #<Nizicon::Members::OkumuraNonoka:0x00000000000000>,
 #<Nizicon::Members::KinoshitaHiyori:0x00000000000000>,
 #<Nizicon::Members::SuyamaEmiri:0x00000000000000>,
 #<Nizicon::Members::NakamuraAkari:0x00000000000000>,
 #<Nizicon::Members::NishiNanami:0x00000000000000>,
 #<Nizicon::Members::NemotoNagi:0x00000000000000>,
 #<Nizicon::Members::MatobaKarin:0x00000000000000>,
 #<Nizicon::Members::YoshimuraNana:0x00000000000000>]
```

## Change Log

### Version 0.0.0

first version
