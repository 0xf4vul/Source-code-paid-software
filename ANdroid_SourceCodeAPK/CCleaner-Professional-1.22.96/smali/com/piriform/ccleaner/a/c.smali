.class public enum Lcom/piriform/ccleaner/a/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/a/c;

.field public static final enum b:Lcom/piriform/ccleaner/a/c;

.field public static final enum c:Lcom/piriform/ccleaner/a/c;

.field public static final enum d:Lcom/piriform/ccleaner/a/c;

.field public static final enum e:Lcom/piriform/ccleaner/a/c;

.field public static final enum f:Lcom/piriform/ccleaner/a/c;

.field public static final enum g:Lcom/piriform/ccleaner/a/c;

.field public static final enum h:Lcom/piriform/ccleaner/a/c;

.field public static final enum i:Lcom/piriform/ccleaner/a/c;

.field public static final enum j:Lcom/piriform/ccleaner/a/c;

.field public static final enum k:Lcom/piriform/ccleaner/a/c;

.field public static final enum l:Lcom/piriform/ccleaner/a/c;

.field public static final enum m:Lcom/piriform/ccleaner/a/c;

.field public static final enum n:Lcom/piriform/ccleaner/a/c;

.field public static final enum o:Lcom/piriform/ccleaner/a/c;

.field public static final enum p:Lcom/piriform/ccleaner/a/c;

.field private static final synthetic u:[Lcom/piriform/ccleaner/a/c;


# instance fields
.field public final q:I

.field public final r:Z

.field public final s:Z

.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v2, 0x5

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 15
    new-instance v0, Lcom/piriform/ccleaner/a/c;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/piriform/ccleaner/a/c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    .line 17
    new-instance v0, Lcom/piriform/ccleaner/a/c;

    const-string/jumbo v1, "FILES_FOLDERS"

    const v3, 0x7f0200ed

    const v4, 0x7f0801d3

    invoke-direct {v0, v1, v6, v3, v4}, Lcom/piriform/ccleaner/a/c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/piriform/ccleaner/a/c;->b:Lcom/piriform/ccleaner/a/c;

    .line 18
    new-instance v0, Lcom/piriform/ccleaner/a/c;

    const-string/jumbo v1, "HISTORY"

    const v3, 0x7f0200ee

    const v4, 0x7f0801d4

    invoke-direct {v0, v1, v13, v3, v4}, Lcom/piriform/ccleaner/a/c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/piriform/ccleaner/a/c;->c:Lcom/piriform/ccleaner/a/c;

    .line 19
    new-instance v0, Lcom/piriform/ccleaner/a/c;

    const-string/jumbo v1, "OTHER_CACHES"

    const v3, 0x7f020113

    const v4, 0x7f0801d6

    invoke-direct {v0, v1, v14, v3, v4}, Lcom/piriform/ccleaner/a/c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/piriform/ccleaner/a/c;->d:Lcom/piriform/ccleaner/a/c;

    .line 20
    new-instance v0, Lcom/piriform/ccleaner/a/c$1;

    const-string/jumbo v1, "WHATSAPP"

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/a/c$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/a/c;->e:Lcom/piriform/ccleaner/a/c;

    .line 32
    new-instance v0, Lcom/piriform/ccleaner/a/c;

    const-string/jumbo v1, "MANUAL"

    const v3, 0x7f020108

    const v4, 0x7f0801d5

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/a/c;-><init>(Ljava/lang/String;IIIZZ)V

    sput-object v0, Lcom/piriform/ccleaner/a/c;->f:Lcom/piriform/ccleaner/a/c;

    .line 34
    new-instance v7, Lcom/piriform/ccleaner/a/c;

    const-string/jumbo v8, "IMAGES"

    const/4 v9, 0x6

    const v10, 0x7f0200ef

    const v11, 0x7f08021e

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/piriform/ccleaner/a/c;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v7, Lcom/piriform/ccleaner/a/c;->g:Lcom/piriform/ccleaner/a/c;

    .line 35
    new-instance v7, Lcom/piriform/ccleaner/a/c;

    const-string/jumbo v8, "MUSIC"

    const/4 v9, 0x7

    const v10, 0x7f020109

    const v11, 0x7f080221

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/piriform/ccleaner/a/c;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v7, Lcom/piriform/ccleaner/a/c;->h:Lcom/piriform/ccleaner/a/c;

    .line 36
    new-instance v7, Lcom/piriform/ccleaner/a/c;

    const-string/jumbo v8, "DOCUMENTS"

    const/16 v9, 0x8

    const v10, 0x7f0200e0

    const v11, 0x7f080210

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/piriform/ccleaner/a/c;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v7, Lcom/piriform/ccleaner/a/c;->i:Lcom/piriform/ccleaner/a/c;

    .line 37
    new-instance v7, Lcom/piriform/ccleaner/a/c;

    const-string/jumbo v8, "SPREADSHEETS"

    const/16 v9, 0x9

    const v10, 0x7f02012c

    const v11, 0x7f080266

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/piriform/ccleaner/a/c;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v7, Lcom/piriform/ccleaner/a/c;->j:Lcom/piriform/ccleaner/a/c;

    .line 38
    new-instance v7, Lcom/piriform/ccleaner/a/c;

    const-string/jumbo v8, "PRESENTATIONS"

    const/16 v9, 0xa

    const v10, 0x7f020119

    const v11, 0x7f080229

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/piriform/ccleaner/a/c;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v7, Lcom/piriform/ccleaner/a/c;->k:Lcom/piriform/ccleaner/a/c;

    .line 39
    new-instance v7, Lcom/piriform/ccleaner/a/c;

    const-string/jumbo v8, "PDFS"

    const/16 v9, 0xb

    const v10, 0x7f020117

    const v11, 0x7f080228

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/piriform/ccleaner/a/c;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v7, Lcom/piriform/ccleaner/a/c;->l:Lcom/piriform/ccleaner/a/c;

    .line 40
    new-instance v7, Lcom/piriform/ccleaner/a/c;

    const-string/jumbo v8, "VIDEOS"

    const/16 v9, 0xc

    const v10, 0x7f020132

    const v11, 0x7f08027a

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/piriform/ccleaner/a/c;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v7, Lcom/piriform/ccleaner/a/c;->m:Lcom/piriform/ccleaner/a/c;

    .line 41
    new-instance v7, Lcom/piriform/ccleaner/a/c;

    const-string/jumbo v8, "ARCHIVES"

    const/16 v9, 0xd

    const v10, 0x7f0200d2

    const v11, 0x7f080203

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/piriform/ccleaner/a/c;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v7, Lcom/piriform/ccleaner/a/c;->n:Lcom/piriform/ccleaner/a/c;

    .line 42
    new-instance v7, Lcom/piriform/ccleaner/a/c;

    const-string/jumbo v8, "APKS"

    const/16 v9, 0xe

    const v10, 0x7f0200c9

    const v11, 0x7f0801ed

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/piriform/ccleaner/a/c;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v7, Lcom/piriform/ccleaner/a/c;->o:Lcom/piriform/ccleaner/a/c;

    .line 43
    new-instance v7, Lcom/piriform/ccleaner/a/c;

    const-string/jumbo v8, "OTHERS"

    const/16 v9, 0xf

    const v10, 0x7f020115

    const v11, 0x7f080222

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/piriform/ccleaner/a/c;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v7, Lcom/piriform/ccleaner/a/c;->p:Lcom/piriform/ccleaner/a/c;

    .line 14
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/piriform/ccleaner/a/c;

    sget-object v1, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/piriform/ccleaner/a/c;->b:Lcom/piriform/ccleaner/a/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/piriform/ccleaner/a/c;->c:Lcom/piriform/ccleaner/a/c;

    aput-object v1, v0, v13

    sget-object v1, Lcom/piriform/ccleaner/a/c;->d:Lcom/piriform/ccleaner/a/c;

    aput-object v1, v0, v14

    const/4 v1, 0x4

    sget-object v3, Lcom/piriform/ccleaner/a/c;->e:Lcom/piriform/ccleaner/a/c;

    aput-object v3, v0, v1

    sget-object v1, Lcom/piriform/ccleaner/a/c;->f:Lcom/piriform/ccleaner/a/c;

    aput-object v1, v0, v2

    const/4 v1, 0x6

    sget-object v2, Lcom/piriform/ccleaner/a/c;->g:Lcom/piriform/ccleaner/a/c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/piriform/ccleaner/a/c;->h:Lcom/piriform/ccleaner/a/c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/piriform/ccleaner/a/c;->i:Lcom/piriform/ccleaner/a/c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/piriform/ccleaner/a/c;->j:Lcom/piriform/ccleaner/a/c;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/piriform/ccleaner/a/c;->k:Lcom/piriform/ccleaner/a/c;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/piriform/ccleaner/a/c;->l:Lcom/piriform/ccleaner/a/c;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/piriform/ccleaner/a/c;->m:Lcom/piriform/ccleaner/a/c;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/piriform/ccleaner/a/c;->n:Lcom/piriform/ccleaner/a/c;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/piriform/ccleaner/a/c;->o:Lcom/piriform/ccleaner/a/c;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/piriform/ccleaner/a/c;->p:Lcom/piriform/ccleaner/a/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/piriform/ccleaner/a/c;->u:[Lcom/piriform/ccleaner/a/c;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x4

    const v1, 0x7f020113

    const v2, 0x7f0801d7

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/piriform/ccleaner/a/c;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 51
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/a/c;-><init>(Ljava/lang/String;IIIZ)V

    .line 52
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/a/c;-><init>(Ljava/lang/String;IIIZZ)V

    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZ)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/piriform/ccleaner/a/c;->t:I

    .line 60
    iput p4, p0, Lcom/piriform/ccleaner/a/c;->q:I

    .line 61
    iput-boolean p5, p0, Lcom/piriform/ccleaner/a/c;->r:Z

    .line 62
    iput-boolean p6, p0, Lcom/piriform/ccleaner/a/c;->s:Z

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/a/c;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/piriform/ccleaner/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/c;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/a/c;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/piriform/ccleaner/a/c;->u:[Lcom/piriform/ccleaner/a/c;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/a/c;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 84
    .line 1080
    iget-boolean v0, p0, Lcom/piriform/ccleaner/a/c;->s:Z

    .line 84
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
