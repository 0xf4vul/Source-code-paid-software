.class public enum Lcom/piriform/ccleaner/a/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/a/h;",
        ">;"
    }
.end annotation


# static fields
.field private static final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic E:[Lcom/piriform/ccleaner/a/h;

.field public static final enum a:Lcom/piriform/ccleaner/a/h;

.field public static final enum b:Lcom/piriform/ccleaner/a/h;

.field public static final enum c:Lcom/piriform/ccleaner/a/h;

.field public static final enum d:Lcom/piriform/ccleaner/a/h;

.field public static final enum e:Lcom/piriform/ccleaner/a/h;

.field public static final enum f:Lcom/piriform/ccleaner/a/h;

.field public static final enum g:Lcom/piriform/ccleaner/a/h;

.field public static final enum h:Lcom/piriform/ccleaner/a/h;

.field public static final enum i:Lcom/piriform/ccleaner/a/h;

.field public static final enum j:Lcom/piriform/ccleaner/a/h;

.field public static final enum k:Lcom/piriform/ccleaner/a/h;

.field public static final enum l:Lcom/piriform/ccleaner/a/h;

.field public static final enum m:Lcom/piriform/ccleaner/a/h;

.field public static final enum n:Lcom/piriform/ccleaner/a/h;

.field public static final enum o:Lcom/piriform/ccleaner/a/h;

.field public static final enum p:Lcom/piriform/ccleaner/a/h;

.field public static final enum q:Lcom/piriform/ccleaner/a/h;

.field public static final enum r:Lcom/piriform/ccleaner/a/h;

.field public static final enum s:Lcom/piriform/ccleaner/a/h;

.field public static final enum t:Lcom/piriform/ccleaner/a/h;

.field public static final enum u:Lcom/piriform/ccleaner/a/h;

.field public static final enum v:Lcom/piriform/ccleaner/a/h;

.field public static final enum w:Lcom/piriform/ccleaner/a/h;

.field public static final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/a/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

.field public final y:I

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v1, "CALL_LOG"

    const v3, 0x7f0801de

    const v4, 0x7f02008e

    const v5, 0x7f02008b

    const-string/jumbo v6, "Call Logs"

    const-string/jumbo v7, "callLog"

    invoke-direct/range {v0 .. v7}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/a/h;->a:Lcom/piriform/ccleaner/a/h;

    .line 17
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "MESSAGES"

    const v6, 0x7f0801e6

    const v7, 0x7f02012b

    const-string/jumbo v8, "SMS"

    const-string/jumbo v9, "messages"

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->b:Lcom/piriform/ccleaner/a/h;

    .line 23
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "CLIPBOARD"

    const v6, 0x7f0801df

    const v7, 0x7f020092

    const v8, 0x7f02008f

    const-string/jumbo v9, "Clipboard"

    const-string/jumbo v10, "clipboard"

    move v5, v12

    invoke-direct/range {v3 .. v10}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->c:Lcom/piriform/ccleaner/a/h;

    .line 30
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "CACHE"

    const v6, 0x7f0801dd

    const v7, 0x7f0200a7

    const v8, 0x7f0200a4

    const-string/jumbo v9, "Cache"

    const-string/jumbo v10, "cache"

    move v5, v13

    invoke-direct/range {v3 .. v10}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->d:Lcom/piriform/ccleaner/a/h;

    .line 37
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "ADVANCED_CACHE"

    const v6, 0x7f0801dd

    const v7, 0x7f0200a7

    const v8, 0x7f0200a4

    const-string/jumbo v9, "Advanced Cache"

    const-string/jumbo v10, "advancedCache"

    move v5, v14

    invoke-direct/range {v3 .. v10}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->e:Lcom/piriform/ccleaner/a/h;

    .line 44
    new-instance v0, Lcom/piriform/ccleaner/a/h$1;

    const-string/jumbo v1, "PROCESSES"

    const-string/jumbo v3, "Processes"

    const-string/jumbo v4, "process"

    invoke-direct {v0, v1, v3, v4}, Lcom/piriform/ccleaner/a/h$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/a/h;->f:Lcom/piriform/ccleaner/a/h;

    .line 56
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "BROWSER_HISTORY"

    const/4 v5, 0x6

    const v6, 0x7f0801dc

    const v7, 0x7f02008a

    const v8, 0x7f020087

    const-string/jumbo v9, "Browser History"

    const-string/jumbo v10, "browserHistory"

    invoke-direct/range {v3 .. v10}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->g:Lcom/piriform/ccleaner/a/h;

    .line 63
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "DOWNLOADS"

    const/4 v5, 0x7

    const v6, 0x7f0801e1

    const v7, 0x7f02009a

    const v8, 0x7f020097

    const-string/jumbo v9, "Downloaded Files"

    const-string/jumbo v10, "downloadFolder"

    invoke-direct/range {v3 .. v10}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->h:Lcom/piriform/ccleaner/a/h;

    .line 70
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "BLUETOOTH_FOLDER"

    const/16 v5, 0x8

    const v6, 0x7f0801db

    const v7, 0x7f020086

    const v8, 0x7f020083

    const-string/jumbo v9, "Bluetooth Folder"

    const-string/jumbo v10, "bluetoothFolder"

    invoke-direct/range {v3 .. v10}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->i:Lcom/piriform/ccleaner/a/h;

    .line 77
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "GOOGLE_PLAY"

    const/16 v5, 0x9

    const v6, 0x7f0801e4

    const v7, 0x7f0200ab

    const v8, 0x7f0200a8

    const-string/jumbo v9, "Google Play Search History"

    const-string/jumbo v10, "googlePlay"

    invoke-direct/range {v3 .. v10}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->j:Lcom/piriform/ccleaner/a/h;

    .line 84
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "APK_FILES"

    const/16 v5, 0xa

    const v6, 0x7f0801da

    const v7, 0x7f020082

    const v8, 0x7f020080

    const-string/jumbo v9, "APK files"

    const-string/jumbo v10, "apkFiles"

    invoke-direct/range {v3 .. v10}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->k:Lcom/piriform/ccleaner/a/h;

    .line 91
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "WHATSAPP_SENT_IMAGES"

    const/16 v5, 0xb

    const v6, 0x7f0801ea

    const v7, 0x7f0200be

    const v8, 0x7f0200bb

    const-string/jumbo v9, "WhatsApp Sent Images"

    const-string/jumbo v10, "whatsappSentImages"

    invoke-direct/range {v3 .. v10}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->l:Lcom/piriform/ccleaner/a/h;

    .line 98
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "WHATSAPP_SENT_VIDEO"

    const/16 v5, 0xc

    const v6, 0x7f0801eb

    const v7, 0x7f0200c2

    const v8, 0x7f0200bf

    const-string/jumbo v9, "WhatsApp Sent Video"

    const-string/jumbo v10, "whatsappSentVideo"

    invoke-direct/range {v3 .. v10}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->m:Lcom/piriform/ccleaner/a/h;

    .line 105
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "WHATSAPP_SENT_AUDIO"

    const/16 v5, 0xd

    const v6, 0x7f0801e9

    const v7, 0x7f0200b6

    const v8, 0x7f0200b3

    const-string/jumbo v9, "WhatsApp Sent Audio"

    const-string/jumbo v10, "whatsappSentAudio"

    invoke-direct/range {v3 .. v10}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->n:Lcom/piriform/ccleaner/a/h;

    .line 112
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "WHATSAPP_VOICE_NOTES"

    const/16 v5, 0xe

    const v6, 0x7f0801ec

    const v7, 0x7f0200c6

    const v8, 0x7f0200c3

    const-string/jumbo v9, "WhatsApp Voice Notes"

    const-string/jumbo v10, "whatsappVoiceNotes"

    invoke-direct/range {v3 .. v10}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->o:Lcom/piriform/ccleaner/a/h;

    .line 119
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "WHATSAPP_OLD_BACKUPS"

    const/16 v5, 0xf

    const v6, 0x7f0801e8

    const v7, 0x7f0200ba

    const v8, 0x7f0200b7

    const-string/jumbo v9, "WhatsApp Old Backups"

    const-string/jumbo v10, "whatsappOldBackups"

    invoke-direct/range {v3 .. v10}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->p:Lcom/piriform/ccleaner/a/h;

    .line 126
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "MANUAL_CLEANING"

    const/16 v5, 0x10

    const v6, 0x7f0801d5

    const v7, 0x7f02009f

    const-string/jumbo v8, "Manual: "

    const-string/jumbo v9, "manualCleaning"

    invoke-direct/range {v3 .. v9}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->q:Lcom/piriform/ccleaner/a/h;

    .line 131
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "THUMBNAIL_CACHE"

    const/16 v5, 0x11

    const v6, 0x7f0801e7

    const v7, 0x7f0200b2

    const v8, 0x7f0200b0

    const-string/jumbo v9, "Thumbnail Cache"

    const-string/jumbo v10, "thumbnailCache"

    invoke-direct/range {v3 .. v10}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->r:Lcom/piriform/ccleaner/a/h;

    .line 138
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "EMPTY_FOLDERS"

    const/16 v5, 0x12

    const v6, 0x7f0801e2

    const v7, 0x7f02009e

    const v8, 0x7f02009b

    const-string/jumbo v9, "Empty folders"

    const-string/jumbo v10, "emptyFolders"

    invoke-direct/range {v3 .. v10}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->s:Lcom/piriform/ccleaner/a/h;

    .line 145
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "GOOGLE_MAPS_CACHE"

    const/16 v5, 0x13

    const v6, 0x7f0801e3

    const v7, 0x7f0200a3

    const v8, 0x7f0200a0

    const-string/jumbo v9, "Google Maps Cache"

    const-string/jumbo v10, "googleMapsCache"

    invoke-direct/range {v3 .. v10}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->t:Lcom/piriform/ccleaner/a/h;

    .line 152
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "CUSTOM_FOLDERS"

    const/16 v5, 0x14

    const v6, 0x7f0801e0

    const v7, 0x7f020096

    const v8, 0x7f020093

    const-string/jumbo v9, "Custom Files and Folders"

    const-string/jumbo v10, "customFolders"

    invoke-direct/range {v3 .. v10}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->u:Lcom/piriform/ccleaner/a/h;

    .line 159
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "AD_CACHE_FOLDERS"

    const/16 v5, 0x15

    const v6, 0x7f0801d9

    const v7, 0x7f02007f

    const v8, 0x7f02007c

    const-string/jumbo v9, "Ad Cache Folders"

    const-string/jumbo v10, "adCacheFolders"

    invoke-direct/range {v3 .. v10}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->v:Lcom/piriform/ccleaner/a/h;

    .line 166
    new-instance v3, Lcom/piriform/ccleaner/a/h;

    const-string/jumbo v4, "ADVERT_ANALYSIS_TYPE"

    const/16 v5, 0x16

    const-string/jumbo v9, "Advert"

    const-string/jumbo v10, "advert"

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v10}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/piriform/ccleaner/a/h;->w:Lcom/piriform/ccleaner/a/h;

    .line 9
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/piriform/ccleaner/a/h;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->a:Lcom/piriform/ccleaner/a/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/piriform/ccleaner/a/h;->b:Lcom/piriform/ccleaner/a/h;

    aput-object v1, v0, v11

    sget-object v1, Lcom/piriform/ccleaner/a/h;->c:Lcom/piriform/ccleaner/a/h;

    aput-object v1, v0, v12

    sget-object v1, Lcom/piriform/ccleaner/a/h;->d:Lcom/piriform/ccleaner/a/h;

    aput-object v1, v0, v13

    sget-object v1, Lcom/piriform/ccleaner/a/h;->e:Lcom/piriform/ccleaner/a/h;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, Lcom/piriform/ccleaner/a/h;->f:Lcom/piriform/ccleaner/a/h;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/piriform/ccleaner/a/h;->g:Lcom/piriform/ccleaner/a/h;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/piriform/ccleaner/a/h;->h:Lcom/piriform/ccleaner/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/piriform/ccleaner/a/h;->i:Lcom/piriform/ccleaner/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/piriform/ccleaner/a/h;->j:Lcom/piriform/ccleaner/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/piriform/ccleaner/a/h;->k:Lcom/piriform/ccleaner/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/piriform/ccleaner/a/h;->l:Lcom/piriform/ccleaner/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/piriform/ccleaner/a/h;->m:Lcom/piriform/ccleaner/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/piriform/ccleaner/a/h;->n:Lcom/piriform/ccleaner/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/piriform/ccleaner/a/h;->o:Lcom/piriform/ccleaner/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/piriform/ccleaner/a/h;->p:Lcom/piriform/ccleaner/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/piriform/ccleaner/a/h;->q:Lcom/piriform/ccleaner/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/piriform/ccleaner/a/h;->r:Lcom/piriform/ccleaner/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/piriform/ccleaner/a/h;->s:Lcom/piriform/ccleaner/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/piriform/ccleaner/a/h;->t:Lcom/piriform/ccleaner/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/piriform/ccleaner/a/h;->u:Lcom/piriform/ccleaner/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/piriform/ccleaner/a/h;->v:Lcom/piriform/ccleaner/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/piriform/ccleaner/a/h;->w:Lcom/piriform/ccleaner/a/h;

    aput-object v2, v0, v1

    sput-object v0, Lcom/piriform/ccleaner/a/h;->E:[Lcom/piriform/ccleaner/a/h;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    sput-object v0, Lcom/piriform/ccleaner/a/h;->x:Ljava/util/List;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->f:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/piriform/ccleaner/a/h;->x:Ljava/util/List;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->p:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/piriform/ccleaner/a/h;->x:Ljava/util/List;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->n:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/piriform/ccleaner/a/h;->x:Ljava/util/List;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->l:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/piriform/ccleaner/a/h;->x:Ljava/util/List;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->m:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/piriform/ccleaner/a/h;->x:Ljava/util/List;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->o:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    sput-object v0, Lcom/piriform/ccleaner/a/h;->D:Ljava/util/List;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->k:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lcom/piriform/ccleaner/a/h;->D:Ljava/util/List;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->i:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/piriform/ccleaner/a/h;->D:Ljava/util/List;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->u:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/piriform/ccleaner/a/h;->D:Ljava/util/List;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->h:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/piriform/ccleaner/a/h;->D:Ljava/util/List;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->p:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/piriform/ccleaner/a/h;->D:Ljava/util/List;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->n:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/piriform/ccleaner/a/h;->D:Ljava/util/List;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->l:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/piriform/ccleaner/a/h;->D:Ljava/util/List;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->m:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/piriform/ccleaner/a/h;->D:Ljava/util/List;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->o:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 210
    iput p3, p0, Lcom/piriform/ccleaner/a/h;->y:I

    .line 211
    iput p4, p0, Lcom/piriform/ccleaner/a/h;->z:I

    .line 212
    iput p5, p0, Lcom/piriform/ccleaner/a/h;->A:I

    .line 213
    iput-object p6, p0, Lcom/piriform/ccleaner/a/h;->B:Ljava/lang/String;

    .line 214
    iput-object p7, p0, Lcom/piriform/ccleaner/a/h;->C:Ljava/lang/String;

    .line 215
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 9
    const/4 v2, 0x5

    const v3, 0x7f0801e5

    const v4, 0x7f0200af

    const v5, 0x7f0200ac

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/piriform/ccleaner/a/h;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/piriform/ccleaner/a/h;
    .locals 5

    .prologue
    .line 258
    invoke-static {}, Lcom/piriform/ccleaner/a/h;->values()[Lcom/piriform/ccleaner/a/h;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1218
    iget-object v4, v0, Lcom/piriform/ccleaner/a/h;->C:Ljava/lang/String;

    .line 259
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    :goto_1
    return-object v0

    .line 258
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 263
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/a/h;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/piriform/ccleaner/a/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/h;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/a/h;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/piriform/ccleaner/a/h;->E:[Lcom/piriform/ccleaner/a/h;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/a/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/a/h;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/piriform/ccleaner/cleaning/g;)Z
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/piriform/ccleaner/cleaning/g;->c:Lcom/piriform/ccleaner/cleaning/g;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/piriform/ccleaner/a/h;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lcom/piriform/ccleaner/a/h;->D:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
