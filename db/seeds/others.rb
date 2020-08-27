# その他の子カテゴリー配列
others_child_array = 
    [
      'まとめ売り',
      'ペット用品',
      '食品',
      '飲料/酒',
      '日用品/生活雑貨/旅行',
      'アンティーク/コレクション',
      '文房具/事務用品',
      '事務/店舗用品',
      'その他'
    ]

# その他の孫カテゴリー
others_grandchild_array =
[
  # 0:まとめ売り
  [
    'まとめ売り'
  ],
  # 1:ペット用品
  [
    'ペットフード',
    '犬用品',
    '猫用品',
    '魚用品/水草',
    '小動物用品',
    '爬虫類/両生類用品',
    'かご/おり',
    '鳥用品',
    '虫類用品',
    'その他'
  ],
  # 2:食品
  [
    '菓子',
    '米',
    '野菜',
    '果物',
    '調味料',
    '魚介類(加工食品)',
    '肉類(加工食品)',
    'その他加工食品',
    'その他'
  ],
  # 3:飲料/酒
  [
    'コーヒー',
    'ソフトドリンク',
    'ミネラルウォーター',
    '茶',
    'ウィスキー',
    'ワイン',
    'ブランデー',
    '焼酎',
    '日本酒',
    'ビール、発泡酒',
    'その他'
  ],
  # 4:日用品/生活雑貨/旅行
  [
    'タオル/バス用品',
    '日用品/生活雑貨',
    '洗剤/柔軟剤',
    '旅行用品',
    '防災関連グッズ',
    'その他'
  ],
  # 5:アンティーク/コレクション
  [
    '雑貨',
    '工芸品',
    '家具',
    '印刷物',
    'その他'
  ],
  # 6:文房具/事務用品
  [
    '筆記具',
    'ノート/メモ帳',
    'テープ/マスキングテープ',
    'カレンダー/スケジュール',
    'アルバム/スクラップ',
    'ファイル/バインダー',
    'はさみ/カッター',
    'カードホルダー/名刺管理',
    'のり/ホッチキス',
    'その他'
  ],
  # 7:事務/店舗用品
  [
    'オフィス用品一般',
    'オフィス家具',
    '店舗用品',
    'OA機器',
    'ラッピング/包装',
    'その他'
  ],
  # 8:その他
  [
    'その他'
  ]
]

parent = Category.create(name: 'その他')
others_child_array.each_with_index do |child, i|
  child = parent.children.create(name: child)
  others_grandchild_array[i].each do |grandchild|
    child.children.create(name: grandchild)
  end
end