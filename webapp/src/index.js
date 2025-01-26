import './styles.css';

const QuotePlugin = {
    // Plugin initialization
    initialize: () => {
        // No special initialization needed as we only apply CSS
    }
};

window.registerPlugin('mattermost-quote-plugin', QuotePlugin);
