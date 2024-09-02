// meta-tags.js
function updateMetaTags(pathname) {
    let title, description, image;

    switch (pathname) {
        case '/70/ethos-nodes':
            title = '70GRAMx Ethos Nodes';
            description = 'Join a distributed network and start earning by running a slice of the 50GRAMx';
            break;
        case '/66/podeage-llama-7b':
            title = '66GRAMx Podeage LLAMA-7B';
            description = 'Fast AI Inference at Tokenized Prices';
            break;
        default:
            title = '50GRAMx';
            description = 'Your. Unified. Simple. Secure. Network.';
    }
    document.title = title;

    const metaTags = {
        'description': description,
        'og:title': title,
        'og:description': description,
        'og:image': image,
        'twitter:title': title,
        'twitter:description': description,
        'twitter:image': image
    };

    for (const [name, content] of Object.entries(metaTags)) {
        let meta = document.querySelector(`meta[name='${name}']`) || document.querySelector(`meta[property='${name}']`);
        if (!meta) {
            meta = document.createElement('meta');
            if (name.startsWith('og:') || name.startsWith('twitter:')) {
                meta.setAttribute('property', name);
            } else {
                meta.setAttribute('name', name);
            }
            document.head.appendChild(meta);
        }
        meta.content = content;
    }
}

// Function to detect URL changes
function onUrlChange(callback) {
    let currentUrl = location.pathname;
    setInterval(() => {
        if (currentUrl !== location.pathname) {
            currentUrl = location.pathname;
            callback(currentUrl);
        }
    }, 500); // Check for URL change every 500ms
}

window.addEventListener('load', () => {
    updateMetaTags(window.location.pathname);
    onUrlChange(updateMetaTags);
});