.class public final enum Lcom/piriform/ccleaner/core/data/e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/core/data/e;",
        ">;",
        "Lcom/piriform/ccleaner/core/f",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/piriform/ccleaner/core/data/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/core/data/e;

.field public static final enum b:Lcom/piriform/ccleaner/core/data/e;

.field public static final enum c:Lcom/piriform/ccleaner/core/data/e;

.field public static final enum d:Lcom/piriform/ccleaner/core/data/e;

.field public static final enum e:Lcom/piriform/ccleaner/core/data/e;

.field public static final enum f:Lcom/piriform/ccleaner/core/data/e;

.field public static final enum g:Lcom/piriform/ccleaner/core/data/e;

.field private static final i:Lcom/piriform/ccleaner/core/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/core/j",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/piriform/ccleaner/core/data/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic j:[Lcom/piriform/ccleaner/core/data/e;


# instance fields
.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 11
    new-instance v0, Lcom/piriform/ccleaner/core/data/e;

    const-string/jumbo v1, "ALL"

    const/4 v2, 0x0

    sget-object v3, Lcom/piriform/ccleaner/core/g;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/data/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/e;->a:Lcom/piriform/ccleaner/core/data/e;

    .line 12
    new-instance v0, Lcom/piriform/ccleaner/core/data/e;

    const-string/jumbo v1, "OUTGOING_CALL"

    invoke-direct {v0, v1, v4, v5}, Lcom/piriform/ccleaner/core/data/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/e;->b:Lcom/piriform/ccleaner/core/data/e;

    .line 13
    new-instance v0, Lcom/piriform/ccleaner/core/data/e;

    const-string/jumbo v1, "RECEIVED_CALL"

    invoke-direct {v0, v1, v5, v4}, Lcom/piriform/ccleaner/core/data/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/e;->c:Lcom/piriform/ccleaner/core/data/e;

    .line 14
    new-instance v0, Lcom/piriform/ccleaner/core/data/e;

    const-string/jumbo v1, "MISSED_CALL"

    invoke-direct {v0, v1, v6, v6}, Lcom/piriform/ccleaner/core/data/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/e;->d:Lcom/piriform/ccleaner/core/data/e;

    .line 15
    new-instance v0, Lcom/piriform/ccleaner/core/data/e;

    const-string/jumbo v1, "VOICE_MAIL"

    invoke-direct {v0, v1, v7, v7}, Lcom/piriform/ccleaner/core/data/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/e;->e:Lcom/piriform/ccleaner/core/data/e;

    .line 16
    new-instance v0, Lcom/piriform/ccleaner/core/data/e;

    const-string/jumbo v1, "REJECTED_CALL"

    invoke-direct {v0, v1, v8, v8}, Lcom/piriform/ccleaner/core/data/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/e;->f:Lcom/piriform/ccleaner/core/data/e;

    .line 17
    new-instance v0, Lcom/piriform/ccleaner/core/data/e;

    const-string/jumbo v1, "REFUSED_LIST_CALL"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/data/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/e;->g:Lcom/piriform/ccleaner/core/data/e;

    .line 9
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/piriform/ccleaner/core/data/e;

    const/4 v1, 0x0

    sget-object v2, Lcom/piriform/ccleaner/core/data/e;->a:Lcom/piriform/ccleaner/core/data/e;

    aput-object v2, v0, v1

    sget-object v1, Lcom/piriform/ccleaner/core/data/e;->b:Lcom/piriform/ccleaner/core/data/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/core/data/e;->c:Lcom/piriform/ccleaner/core/data/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/piriform/ccleaner/core/data/e;->d:Lcom/piriform/ccleaner/core/data/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/piriform/ccleaner/core/data/e;->e:Lcom/piriform/ccleaner/core/data/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/piriform/ccleaner/core/data/e;->f:Lcom/piriform/ccleaner/core/data/e;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/piriform/ccleaner/core/data/e;->g:Lcom/piriform/ccleaner/core/data/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/piriform/ccleaner/core/data/e;->j:[Lcom/piriform/ccleaner/core/data/e;

    .line 19
    new-instance v0, Lcom/piriform/ccleaner/core/j;

    const-class v1, Lcom/piriform/ccleaner/core/data/e;

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/core/j;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/e;->i:Lcom/piriform/ccleaner/core/j;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/piriform/ccleaner/core/data/e;->h:I

    .line 24
    return-void
.end method

.method public static a(I)Lcom/piriform/ccleaner/core/data/e;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/piriform/ccleaner/core/data/e;->i:Lcom/piriform/ccleaner/core/j;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/core/j;->a(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/e;

    .line 1045
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 38
    :goto_0
    if-eqz v1, :cond_1

    .line 41
    :goto_1
    return-object v0

    .line 1045
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 41
    :cond_1
    sget-object v0, Lcom/piriform/ccleaner/core/data/e;->a:Lcom/piriform/ccleaner/core/data/e;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/core/data/e;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/piriform/ccleaner/core/data/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/e;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/core/data/e;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/piriform/ccleaner/core/data/e;->j:[Lcom/piriform/ccleaner/core/data/e;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/core/data/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/core/data/e;

    return-object v0
.end method


# virtual methods
.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    .line 2028
    iget v0, p0, Lcom/piriform/ccleaner/core/data/e;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 9
    return-object v0
.end method
