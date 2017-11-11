.class public final enum Lcom/piriform/ccleaner/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/f;

.field public static final enum b:Lcom/piriform/ccleaner/f;

.field public static final enum c:Lcom/piriform/ccleaner/f;

.field public static final enum d:Lcom/piriform/ccleaner/f;

.field public static final enum e:Lcom/piriform/ccleaner/f;

.field public static final enum f:Lcom/piriform/ccleaner/f;

.field public static final enum g:Lcom/piriform/ccleaner/f;

.field public static final enum h:Lcom/piriform/ccleaner/f;

.field public static final enum i:Lcom/piriform/ccleaner/f;

.field public static final enum j:Lcom/piriform/ccleaner/f;

.field private static l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/piriform/ccleaner/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic m:[Lcom/piriform/ccleaner/f;


# instance fields
.field public final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/piriform/ccleaner/f;

    const-string/jumbo v1, "NONE"

    const v2, 0x7f020115

    invoke-direct {v0, v1, v4, v2}, Lcom/piriform/ccleaner/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/f;->a:Lcom/piriform/ccleaner/f;

    .line 14
    new-instance v0, Lcom/piriform/ccleaner/f;

    const-string/jumbo v1, "IMAGE"

    const v2, 0x7f0200ef

    invoke-direct {v0, v1, v5, v2}, Lcom/piriform/ccleaner/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/f;->b:Lcom/piriform/ccleaner/f;

    .line 15
    new-instance v0, Lcom/piriform/ccleaner/f;

    const-string/jumbo v1, "AUDIO"

    const v2, 0x7f020109

    invoke-direct {v0, v1, v6, v2}, Lcom/piriform/ccleaner/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/f;->c:Lcom/piriform/ccleaner/f;

    .line 16
    new-instance v0, Lcom/piriform/ccleaner/f;

    const-string/jumbo v1, "DOCUMENT"

    const v2, 0x7f0200e0

    invoke-direct {v0, v1, v7, v2}, Lcom/piriform/ccleaner/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/f;->d:Lcom/piriform/ccleaner/f;

    .line 17
    new-instance v0, Lcom/piriform/ccleaner/f;

    const-string/jumbo v1, "SPREADSHEET"

    const v2, 0x7f02012c

    invoke-direct {v0, v1, v8, v2}, Lcom/piriform/ccleaner/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/f;->e:Lcom/piriform/ccleaner/f;

    .line 18
    new-instance v0, Lcom/piriform/ccleaner/f;

    const-string/jumbo v1, "PRESENTATION"

    const/4 v2, 0x5

    const v3, 0x7f020119

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/f;->f:Lcom/piriform/ccleaner/f;

    .line 19
    new-instance v0, Lcom/piriform/ccleaner/f;

    const-string/jumbo v1, "PDF"

    const/4 v2, 0x6

    const v3, 0x7f020117

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/f;->g:Lcom/piriform/ccleaner/f;

    .line 20
    new-instance v0, Lcom/piriform/ccleaner/f;

    const-string/jumbo v1, "VIDEO"

    const/4 v2, 0x7

    const v3, 0x7f020132

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    .line 21
    new-instance v0, Lcom/piriform/ccleaner/f;

    const-string/jumbo v1, "ARCHIVE"

    const/16 v2, 0x8

    const v3, 0x7f0200d2

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/f;->i:Lcom/piriform/ccleaner/f;

    .line 22
    new-instance v0, Lcom/piriform/ccleaner/f;

    const-string/jumbo v1, "APK"

    const/16 v2, 0x9

    const v3, 0x7f0200c9

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/f;->j:Lcom/piriform/ccleaner/f;

    .line 11
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/piriform/ccleaner/f;

    sget-object v1, Lcom/piriform/ccleaner/f;->a:Lcom/piriform/ccleaner/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/f;->b:Lcom/piriform/ccleaner/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/piriform/ccleaner/f;->c:Lcom/piriform/ccleaner/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/piriform/ccleaner/f;->d:Lcom/piriform/ccleaner/f;

    aput-object v1, v0, v7

    sget-object v1, Lcom/piriform/ccleaner/f;->e:Lcom/piriform/ccleaner/f;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/piriform/ccleaner/f;->f:Lcom/piriform/ccleaner/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/piriform/ccleaner/f;->g:Lcom/piriform/ccleaner/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/piriform/ccleaner/f;->i:Lcom/piriform/ccleaner/f;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/piriform/ccleaner/f;->j:Lcom/piriform/ccleaner/f;

    aput-object v2, v0, v1

    sput-object v0, Lcom/piriform/ccleaner/f;->m:[Lcom/piriform/ccleaner/f;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    sput-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "jpg"

    sget-object v2, Lcom/piriform/ccleaner/f;->b:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "jpeg"

    sget-object v2, Lcom/piriform/ccleaner/f;->b:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "png"

    sget-object v2, Lcom/piriform/ccleaner/f;->b:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "raw"

    sget-object v2, Lcom/piriform/ccleaner/f;->b:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "arw"

    sget-object v2, Lcom/piriform/ccleaner/f;->b:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "rw2"

    sget-object v2, Lcom/piriform/ccleaner/f;->b:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "gif"

    sget-object v2, Lcom/piriform/ccleaner/f;->b:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "bmp"

    sget-object v2, Lcom/piriform/ccleaner/f;->b:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "tif"

    sget-object v2, Lcom/piriform/ccleaner/f;->b:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "tiff"

    sget-object v2, Lcom/piriform/ccleaner/f;->b:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "psd"

    sget-object v2, Lcom/piriform/ccleaner/f;->b:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "mp3"

    sget-object v2, Lcom/piriform/ccleaner/f;->c:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "wma"

    sget-object v2, Lcom/piriform/ccleaner/f;->c:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "ogg"

    sget-object v2, Lcom/piriform/ccleaner/f;->c:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "wav"

    sget-object v2, Lcom/piriform/ccleaner/f;->c:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "aac"

    sget-object v2, Lcom/piriform/ccleaner/f;->c:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "m4a"

    sget-object v2, Lcom/piriform/ccleaner/f;->c:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "flac"

    sget-object v2, Lcom/piriform/ccleaner/f;->c:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "aif"

    sget-object v2, Lcom/piriform/ccleaner/f;->c:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "aiff"

    sget-object v2, Lcom/piriform/ccleaner/f;->c:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "aifc"

    sget-object v2, Lcom/piriform/ccleaner/f;->c:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "aifr"

    sget-object v2, Lcom/piriform/ccleaner/f;->c:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "midi"

    sget-object v2, Lcom/piriform/ccleaner/f;->c:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "mid"

    sget-object v2, Lcom/piriform/ccleaner/f;->c:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "rmi"

    sget-object v2, Lcom/piriform/ccleaner/f;->c:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "mp2"

    sget-object v2, Lcom/piriform/ccleaner/f;->c:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "doc"

    sget-object v2, Lcom/piriform/ccleaner/f;->d:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "docx"

    sget-object v2, Lcom/piriform/ccleaner/f;->d:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "odt"

    sget-object v2, Lcom/piriform/ccleaner/f;->d:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "xls"

    sget-object v2, Lcom/piriform/ccleaner/f;->e:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "xlsx"

    sget-object v2, Lcom/piriform/ccleaner/f;->e:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "ods"

    sget-object v2, Lcom/piriform/ccleaner/f;->e:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "ppt"

    sget-object v2, Lcom/piriform/ccleaner/f;->f:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "pptx"

    sget-object v2, Lcom/piriform/ccleaner/f;->f:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "pps"

    sget-object v2, Lcom/piriform/ccleaner/f;->f:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "odp"

    sget-object v2, Lcom/piriform/ccleaner/f;->f:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "pdf"

    sget-object v2, Lcom/piriform/ccleaner/f;->g:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "avi"

    sget-object v2, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "mov"

    sget-object v2, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "mpg"

    sget-object v2, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "mp4"

    sget-object v2, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "flv"

    sget-object v2, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "wmv"

    sget-object v2, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "mkv"

    sget-object v2, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "mpeg"

    sget-object v2, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "mpe"

    sget-object v2, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "mpv"

    sget-object v2, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "m1v"

    sget-object v2, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "m4v"

    sget-object v2, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "ifv"

    sget-object v2, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "qt"

    sget-object v2, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "rm"

    sget-object v2, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "3gp"

    sget-object v2, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "zip"

    sget-object v2, Lcom/piriform/ccleaner/f;->i:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "zipx"

    sget-object v2, Lcom/piriform/ccleaner/f;->i:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "rar"

    sget-object v2, Lcom/piriform/ccleaner/f;->i:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "7z"

    sget-object v2, Lcom/piriform/ccleaner/f;->i:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "ace"

    sget-object v2, Lcom/piriform/ccleaner/f;->i:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "arj"

    sget-object v2, Lcom/piriform/ccleaner/f;->i:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "cab"

    sget-object v2, Lcom/piriform/ccleaner/f;->i:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "tar"

    sget-object v2, Lcom/piriform/ccleaner/f;->i:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "gz"

    sget-object v2, Lcom/piriform/ccleaner/f;->i:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    const-string/jumbo v1, "apk"

    sget-object v2, Lcom/piriform/ccleaner/f;->j:Lcom/piriform/ccleaner/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    .line 133
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/piriform/ccleaner/f;->k:I

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/piriform/ccleaner/f;
    .locals 2

    .prologue
    .line 37
    invoke-static {p0}, Lcom/piriform/ccleaner/g/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 40
    sget-object v1, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lcom/piriform/ccleaner/f;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/f;

    .line 46
    :goto_0
    return-object v0

    .line 43
    :cond_0
    sget-object v0, Lcom/piriform/ccleaner/f;->a:Lcom/piriform/ccleaner/f;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/f;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/piriform/ccleaner/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/f;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/f;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/piriform/ccleaner/f;->m:[Lcom/piriform/ccleaner/f;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/f;

    return-object v0
.end method
