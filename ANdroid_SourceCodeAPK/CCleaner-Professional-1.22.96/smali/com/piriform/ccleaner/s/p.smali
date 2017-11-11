.class public final enum Lcom/piriform/ccleaner/s/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/s/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/s/p;

.field public static final enum b:Lcom/piriform/ccleaner/s/p;

.field public static final enum c:Lcom/piriform/ccleaner/s/p;

.field private static final synthetic e:[Lcom/piriform/ccleaner/s/p;


# instance fields
.field final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/piriform/ccleaner/s/p;

    const-string/jumbo v1, "PLAY_STORE"

    const-string/jumbo v2, "b5a5c5cb02ca09c784c5d88160e2ec24"

    invoke-direct {v0, v1, v3, v2}, Lcom/piriform/ccleaner/s/p;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/s/p;->a:Lcom/piriform/ccleaner/s/p;

    .line 6
    new-instance v0, Lcom/piriform/ccleaner/s/p;

    const-string/jumbo v1, "OLD_PLAY_STORE"

    const-string/jumbo v2, "ef2e086c15df938868bbfbb5823b0ab0"

    invoke-direct {v0, v1, v4, v2}, Lcom/piriform/ccleaner/s/p;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/s/p;->b:Lcom/piriform/ccleaner/s/p;

    .line 7
    new-instance v0, Lcom/piriform/ccleaner/s/p;

    const-string/jumbo v1, "AMAZON_STORE"

    const-string/jumbo v2, "0dff1c8879499ea227037eba7c82a8b4"

    invoke-direct {v0, v1, v5, v2}, Lcom/piriform/ccleaner/s/p;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/s/p;->c:Lcom/piriform/ccleaner/s/p;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/piriform/ccleaner/s/p;

    sget-object v1, Lcom/piriform/ccleaner/s/p;->a:Lcom/piriform/ccleaner/s/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/s/p;->b:Lcom/piriform/ccleaner/s/p;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/s/p;->c:Lcom/piriform/ccleaner/s/p;

    aput-object v1, v0, v5

    sput-object v0, Lcom/piriform/ccleaner/s/p;->e:[Lcom/piriform/ccleaner/s/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/piriform/ccleaner/s/p;->d:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/s/p;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/piriform/ccleaner/s/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/s/p;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/s/p;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/piriform/ccleaner/s/p;->e:[Lcom/piriform/ccleaner/s/p;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/s/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/s/p;

    return-object v0
.end method
