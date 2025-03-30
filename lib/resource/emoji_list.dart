/// QRコードのアイコンとして使用する絵文字のリスト
class EmojiList {
  /// カテゴリーIDの定義
  static const String kSocial = 'social';
  static const String kBusiness = 'business';
  static const String kPersonal = 'personal';
  static const String kServices = 'services';
  static const String kMedia = 'media';
  static const String kTechnology = 'tech';
  static const String kPlaces = 'places';
  static const String kOthers = 'others';
  static const String kAll = 'all';

  /// カテゴリーIDと日本語名のマッピング
  static const Map<String, String> categoryNames = {
    kAll: 'すべて',
    kSocial: 'SNS',
    kBusiness: 'ビジネス',
    kPersonal: '個人',
    kServices: 'サービス',
    kMedia: 'メディア',
    kTechnology: 'テクノロジー',
    kPlaces: '場所',
    kOthers: 'その他',
  };

  /// 表示用カテゴリーリスト（順序付き）
  static const List<String> displayCategories = [
    kSocial,
    kBusiness,
    kPersonal,
    kServices,
    kMedia,
    kTechnology,
  ];

  /// すべてのカテゴリーリスト（表示+非表示）
  static const List<String> allCategories = [
    kSocial,
    kBusiness,
    kPersonal,
    kServices,
    kMedia,
    kTechnology,
    kPlaces,
    kOthers,
  ];

  /// SNSやコミュニケーション関連の絵文字
  static const List<String> social = [
    '✖️',
    '📸',
    '📱',
    '💬',
    '👥',
    '🎮',
    '👤',
    '🤳',
    '📢',
    '🗣️',
    '💭',
    '🔔',
    '📣',
    '🎭',
    '👋',
    '🤝',
    '🫶',
    '💌',
    '📲',
    '📨',
    '🎯',
    '👾',
    '🎧',
    '🎤',
    '🎵',
    '🎶',
    '🎸',
    '🎹',
    '🎺',
    '🎻',
  ];

  /// ビジネス・仕事関連の絵文字
  static const List<String> business = [
    '💼',
    '📊',
    '📝',
    '📧',
    '🗂️',
    '🔗',
    '📁',
    '📑',
    '📋',
    '📎',
    '📈',
    '📉',
    '💹',
    '💰',
    '💵',
    '💸',
    '🏦',
    '💡',
    '🔍',
    '🔎',
    '📌',
    '📍',
    '📏',
    '📐',
    '✂️',
    '🖇️',
    '📇',
    '🗃️',
    '🗄️',
    '🖋️',
    '✒️',
    '🖊️',
    '📄',
    '📃',
    '📰',
    '🗞️',
    '📜',
    '📃',
    '🔖',
    '📘',
  ];

  /// 個人・日常生活関連の絵文字
  static const List<String> personal = [
    '🏠',
    '🔖',
    '📚',
    '✍️',
    '📍',
    '👤',
    '🏡',
    '🚶',
    '🧘',
    '🛌',
    '🛒',
    '🍽️',
    '🍴',
    '🥄',
    '🥢',
    '🧠',
    '👁️',
    '👂',
    '🦷',
    '🦴',
    '❤️',
    '🧡',
    '💛',
    '💚',
    '💙',
    '💜',
    '🤎',
    '🖤',
    '🤍',
    '💝',
    '💓',
    '💖',
    '💕',
    '💞',
    '🧿',
    '☮️',
    '✝️',
    '☪️',
    '🕉️',
    '☸️',
  ];

  /// サービス・ショッピング関連の絵文字
  static const List<String> services = [
    '🛍️',
    '🛒',
    '🔑',
    '💳',
    '🎟️',
    '🏦',
    '🏪',
    '🏬',
    '🏢',
    '🏣',
    '🏥',
    '💊',
    '💉',
    '🩺',
    '🚑',
    '⚕️',
    '🔬',
    '🧪',
    '🧬',
    '🧫',
    '🍴',
    '🍕',
    '🍔',
    '☕',
    '🍰',
    '🍦',
    '🍽️',
    '🥂',
    '🍷',
    '🍸',
    '🚚',
    '🚛',
    '🏍️',
    '🚲',
    '🛵',
    '✈️',
    '🚂',
    '🚆',
    '🚢',
    '🚗',
  ];

  /// メディア・コンテンツ関連の絵文字
  static const List<String> media = [
    '🎵',
    '📺',
    '🎬',
    '🎤',
    '📰',
    '📷',
    '🎥',
    '🎞️',
    '🎨',
    '🎭',
    '📽️',
    '🎦',
    '🎮',
    '📱',
    '💻',
    '🖥️',
    '🎧',
    '📻',
    '🎙️',
    '🎚️',
    '🎛️',
    '🎞️',
    '📀',
    '💿',
    '🏮',
    '🪔',
    '📔',
    '📕',
    '📗',
    '📙',
    '📓',
    '📒',
    '📖',
    '📹',
    '📸',
    '🖼️',
    '🎪',
    '🎠',
    '🎡',
    '🎢',
  ];

  /// テクノロジー・デバイス関連の絵文字
  static const List<String> technology = [
    '📱',
    '💻',
    '⌨️',
    '🖥️',
    '🖱️',
    '📲',
    '☎️',
    '📞',
    '📟',
    '📠',
    '⚡',
    '🔋',
    '🔌',
    '💾',
    '💿',
    '📀',
    '🧮',
    '🎮',
    '🕹️',
    '🎧',
    '📺',
    '📷',
    '🔍',
    '🔎',
    '🔦',
    '🪫',
    '🔬',
    '🔭',
    '⏱️',
    '⏲️',
    '⏰',
    '📡',
    '🛰️',
    '🛸',
    '📱',
    '📲',
    '☎️',
    '📞',
    '📠',
    '📟',
  ];

  /// 場所・移動関連の絵文字
  static const List<String> places = [
    '🏠',
    '🏡',
    '🏢',
    '🏣',
    '🏤',
    '🏥',
    '🏦',
    '🏨',
    '🏩',
    '🏪',
    '🏫',
    '🏬',
    '🏭',
    '🏯',
    '🏰',
    '💒',
    '🗼',
    '🗽',
    '⛪',
    '🕌',
    '🕍',
    '⛩️',
    '🕋',
    '⛲',
    '⛺',
    '🏕️',
    '🏞️',
    '🌄',
    '🌅',
    '🌆',
    '🌇',
    '🌃',
    '🗿',
    '🎠',
    '🎡',
    '🎢',
    '💈',
    '🎪',
    '🚂',
    '🚃',
  ];

  /// その他の絵文字
  static const List<String> others = [
    '🔍',
    '📲',
    'ℹ️',
    '🌐',
    '🔔',
    '⚙️',
    '🔒',
    '🔓',
    '🔑',
    '🔨',
    '📌',
    '📎',
    '🧮',
    '📋',
    '📝',
    '📂',
    '📅',
    '📆',
    '📍',
    '🗝️',
    '🔧',
    '🔩',
    '⚒️',
    '🛠️',
    '⛏️',
    '🧰',
    '🧲',
    '🧪',
    '⚗️',
    '🧫',
    '🧬',
    '🔭',
    '🔬',
    '📡',
    '🔭',
    '⚖️',
    '🧯',
    '🧴',
    '🧷',
    '🧹',
  ];

  /// カテゴリーIDから絵文字リストを取得するマップ
  static final Map<String, List<String>> categoryEmojis = {
    kSocial: social,
    kBusiness: business,
    kPersonal: personal,
    kServices: services,
    kMedia: media,
    kTechnology: technology,
    kPlaces: places,
    kOthers: others,
  };

  /// すべての絵文字リストを結合して返す
  static List<String> get all {
    return [
      ...social,
      ...business,
      ...personal,
      ...services,
      ...media,
      ...technology,
      ...places,
      ...others,
    ];
  }
}
