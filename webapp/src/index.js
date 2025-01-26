import './styles.css';

const QuotePlugin = {
    // プラグインの初期化
    initialize: () => {
        // CSSのみを適用するため、特別な初期化は不要
    }
};

window.registerPlugin('mattermost-quote-plugin', QuotePlugin);
