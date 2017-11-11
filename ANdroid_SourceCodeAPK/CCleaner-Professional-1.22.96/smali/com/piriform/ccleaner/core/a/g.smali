.class public final enum Lcom/piriform/ccleaner/core/a/g;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/core/a/g;",
        ">;",
        "Lcom/piriform/ccleaner/core/f",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/piriform/ccleaner/core/a/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/core/a/g;

.field public static final enum b:Lcom/piriform/ccleaner/core/a/g;

.field public static final enum c:Lcom/piriform/ccleaner/core/a/g;

.field public static final enum d:Lcom/piriform/ccleaner/core/a/g;

.field public static final enum e:Lcom/piriform/ccleaner/core/a/g;

.field public static final enum f:Lcom/piriform/ccleaner/core/a/g;

.field public static final enum g:Lcom/piriform/ccleaner/core/a/g;

.field public static final enum h:Lcom/piriform/ccleaner/core/a/g;

.field public static final enum i:Lcom/piriform/ccleaner/core/a/g;

.field public static final enum j:Lcom/piriform/ccleaner/core/a/g;

.field public static final enum k:Lcom/piriform/ccleaner/core/a/g;

.field public static final enum l:Lcom/piriform/ccleaner/core/a/g;

.field public static final enum m:Lcom/piriform/ccleaner/core/a/g;

.field public static final enum n:Lcom/piriform/ccleaner/core/a/g;

.field public static final enum o:Lcom/piriform/ccleaner/core/a/g;

.field public static final enum p:Lcom/piriform/ccleaner/core/a/g;

.field public static final enum q:Lcom/piriform/ccleaner/core/a/g;

.field public static final enum r:Lcom/piriform/ccleaner/core/a/g;

.field public static final enum s:Lcom/piriform/ccleaner/core/a/g;

.field private static final u:Lcom/piriform/ccleaner/core/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/core/j",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/piriform/ccleaner/core/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic v:[Lcom/piriform/ccleaner/core/a/g;


# instance fields
.field public final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 9
    new-instance v0, Lcom/piriform/ccleaner/core/a/g;

    const-string/jumbo v1, "EMPTY"

    const/4 v2, 0x0

    sget-object v3, Lcom/piriform/ccleaner/core/g;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->a:Lcom/piriform/ccleaner/core/a/g;

    .line 10
    new-instance v0, Lcom/piriform/ccleaner/core/a/g;

    const-string/jumbo v1, "HEADER"

    invoke-direct {v0, v1, v4, v4}, Lcom/piriform/ccleaner/core/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->b:Lcom/piriform/ccleaner/core/a/g;

    .line 11
    new-instance v0, Lcom/piriform/ccleaner/core/a/g;

    const-string/jumbo v1, "USAGE"

    invoke-direct {v0, v1, v5, v5}, Lcom/piriform/ccleaner/core/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->c:Lcom/piriform/ccleaner/core/a/g;

    .line 12
    new-instance v0, Lcom/piriform/ccleaner/core/a/g;

    const-string/jumbo v1, "USAGE_CPU"

    invoke-direct {v0, v1, v6, v6}, Lcom/piriform/ccleaner/core/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->d:Lcom/piriform/ccleaner/core/a/g;

    .line 13
    new-instance v0, Lcom/piriform/ccleaner/core/a/g;

    const-string/jumbo v1, "PACKAGE_CACHE"

    invoke-direct {v0, v1, v7, v7}, Lcom/piriform/ccleaner/core/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->e:Lcom/piriform/ccleaner/core/a/g;

    .line 14
    new-instance v0, Lcom/piriform/ccleaner/core/a/g;

    const-string/jumbo v1, "MESSAGE"

    invoke-direct {v0, v1, v8, v8}, Lcom/piriform/ccleaner/core/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->f:Lcom/piriform/ccleaner/core/a/g;

    .line 15
    new-instance v0, Lcom/piriform/ccleaner/core/a/g;

    const-string/jumbo v1, "MANUAL_CLEANING"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->g:Lcom/piriform/ccleaner/core/a/g;

    .line 16
    new-instance v0, Lcom/piriform/ccleaner/core/a/g;

    const-string/jumbo v1, "CALL_LOG"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->h:Lcom/piriform/ccleaner/core/a/g;

    .line 17
    new-instance v0, Lcom/piriform/ccleaner/core/a/g;

    const-string/jumbo v1, "APPLICATION"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->i:Lcom/piriform/ccleaner/core/a/g;

    .line 18
    new-instance v0, Lcom/piriform/ccleaner/core/a/g;

    const-string/jumbo v1, "ANALYSIS"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->j:Lcom/piriform/ccleaner/core/a/g;

    .line 19
    new-instance v0, Lcom/piriform/ccleaner/core/a/g;

    const-string/jumbo v1, "PROCESS"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->k:Lcom/piriform/ccleaner/core/a/g;

    .line 20
    new-instance v0, Lcom/piriform/ccleaner/core/a/g;

    const-string/jumbo v1, "FOLDER"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->l:Lcom/piriform/ccleaner/core/a/g;

    .line 21
    new-instance v0, Lcom/piriform/ccleaner/core/a/g;

    const-string/jumbo v1, "FILE"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->m:Lcom/piriform/ccleaner/core/a/g;

    .line 22
    new-instance v0, Lcom/piriform/ccleaner/core/a/g;

    const-string/jumbo v1, "SHARE_CLEANING_RESULTS"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->n:Lcom/piriform/ccleaner/core/a/g;

    .line 23
    new-instance v0, Lcom/piriform/ccleaner/core/a/g;

    const-string/jumbo v1, "INFO"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->o:Lcom/piriform/ccleaner/core/a/g;

    .line 24
    new-instance v0, Lcom/piriform/ccleaner/core/a/g;

    const-string/jumbo v1, "REMINDER"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->p:Lcom/piriform/ccleaner/core/a/g;

    .line 25
    new-instance v0, Lcom/piriform/ccleaner/core/a/g;

    const-string/jumbo v1, "CACHE"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->q:Lcom/piriform/ccleaner/core/a/g;

    .line 26
    new-instance v0, Lcom/piriform/ccleaner/core/a/g;

    const-string/jumbo v1, "ADVERT_VIEW_TYPE_ANALYZE_RESULTS"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->r:Lcom/piriform/ccleaner/core/a/g;

    .line 27
    new-instance v0, Lcom/piriform/ccleaner/core/a/g;

    const-string/jumbo v1, "ADVERT_VIEW_TYPE_CLEAN_RESULTS"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->s:Lcom/piriform/ccleaner/core/a/g;

    .line 7
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/piriform/ccleaner/core/a/g;

    const/4 v1, 0x0

    sget-object v2, Lcom/piriform/ccleaner/core/a/g;->a:Lcom/piriform/ccleaner/core/a/g;

    aput-object v2, v0, v1

    sget-object v1, Lcom/piriform/ccleaner/core/a/g;->b:Lcom/piriform/ccleaner/core/a/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/core/a/g;->c:Lcom/piriform/ccleaner/core/a/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/piriform/ccleaner/core/a/g;->d:Lcom/piriform/ccleaner/core/a/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/piriform/ccleaner/core/a/g;->e:Lcom/piriform/ccleaner/core/a/g;

    aput-object v1, v0, v7

    sget-object v1, Lcom/piriform/ccleaner/core/a/g;->f:Lcom/piriform/ccleaner/core/a/g;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/piriform/ccleaner/core/a/g;->g:Lcom/piriform/ccleaner/core/a/g;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/piriform/ccleaner/core/a/g;->h:Lcom/piriform/ccleaner/core/a/g;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/piriform/ccleaner/core/a/g;->i:Lcom/piriform/ccleaner/core/a/g;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/piriform/ccleaner/core/a/g;->j:Lcom/piriform/ccleaner/core/a/g;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/piriform/ccleaner/core/a/g;->k:Lcom/piriform/ccleaner/core/a/g;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/piriform/ccleaner/core/a/g;->l:Lcom/piriform/ccleaner/core/a/g;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/piriform/ccleaner/core/a/g;->m:Lcom/piriform/ccleaner/core/a/g;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/piriform/ccleaner/core/a/g;->n:Lcom/piriform/ccleaner/core/a/g;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/piriform/ccleaner/core/a/g;->o:Lcom/piriform/ccleaner/core/a/g;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/piriform/ccleaner/core/a/g;->p:Lcom/piriform/ccleaner/core/a/g;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/piriform/ccleaner/core/a/g;->q:Lcom/piriform/ccleaner/core/a/g;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/piriform/ccleaner/core/a/g;->r:Lcom/piriform/ccleaner/core/a/g;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/piriform/ccleaner/core/a/g;->s:Lcom/piriform/ccleaner/core/a/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->v:[Lcom/piriform/ccleaner/core/a/g;

    .line 29
    new-instance v0, Lcom/piriform/ccleaner/core/j;

    const-class v1, Lcom/piriform/ccleaner/core/a/g;

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/core/j;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/piriform/ccleaner/core/a/g;->u:Lcom/piriform/ccleaner/core/j;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/piriform/ccleaner/core/a/g;->t:I

    .line 34
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/piriform/ccleaner/core/a/g;->u:Lcom/piriform/ccleaner/core/j;

    .line 1020
    iget-object v0, v0, Lcom/piriform/ccleaner/core/j;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 52
    return v0
.end method

.method public static a(ILcom/piriform/ccleaner/core/a/g;)Lcom/piriform/ccleaner/core/a/g;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/piriform/ccleaner/core/a/g;->u:Lcom/piriform/ccleaner/core/j;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/core/j;->a(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/g;

    .line 48
    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/core/a/g;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/piriform/ccleaner/core/a/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/g;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/core/a/g;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/piriform/ccleaner/core/a/g;->v:[Lcom/piriform/ccleaner/core/a/g;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/core/a/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/core/a/g;

    return-object v0
.end method


# virtual methods
.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    .line 1038
    iget v0, p0, Lcom/piriform/ccleaner/core/a/g;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7
    return-object v0
.end method
