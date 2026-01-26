import definePlugin from "@utils/types";

export default definePlugin({
    name: "EnlargeEmojis",
    description: "Enlarges emojis in chat",
    authors: [{ name: "You" }],

    styles: `
        .emoji {
            width: 40px !important;
            height: 50px !important;
            display: inline-block;
            vertical-align: middle;
            padding-left: 0px;
            padding-right: 0px;
        }
    `,
});
