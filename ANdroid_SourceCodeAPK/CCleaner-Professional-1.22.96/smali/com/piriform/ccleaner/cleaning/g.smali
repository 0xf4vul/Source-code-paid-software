.class public final enum Lcom/piriform/ccleaner/cleaning/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/cleaning/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/cleaning/g;

.field public static final enum b:Lcom/piriform/ccleaner/cleaning/g;

.field public static final enum c:Lcom/piriform/ccleaner/cleaning/g;

.field private static final synthetic e:[Lcom/piriform/ccleaner/cleaning/g;


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/piriform/ccleaner/cleaning/g;

    const-string/jumbo v1, "MAIN_CLEAN"

    const-string/jumbo v2, "main_clean"

    invoke-direct {v0, v1, v3, v2}, Lcom/piriform/ccleaner/cleaning/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/cleaning/g;->a:Lcom/piriform/ccleaner/cleaning/g;

    .line 7
    new-instance v0, Lcom/piriform/ccleaner/cleaning/g;

    const-string/jumbo v1, "QUICK_CLEAN"

    const-string/jumbo v2, "quick_clean"

    invoke-direct {v0, v1, v4, v2}, Lcom/piriform/ccleaner/cleaning/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/cleaning/g;->b:Lcom/piriform/ccleaner/cleaning/g;

    .line 8
    new-instance v0, Lcom/piriform/ccleaner/cleaning/g;

    const-string/jumbo v1, "SCHEDULED_CLEAN"

    const-string/jumbo v2, "scheduled_clean"

    invoke-direct {v0, v1, v5, v2}, Lcom/piriform/ccleaner/cleaning/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/cleaning/g;->c:Lcom/piriform/ccleaner/cleaning/g;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/piriform/ccleaner/cleaning/g;

    sget-object v1, Lcom/piriform/ccleaner/cleaning/g;->a:Lcom/piriform/ccleaner/cleaning/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/cleaning/g;->b:Lcom/piriform/ccleaner/cleaning/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/cleaning/g;->c:Lcom/piriform/ccleaner/cleaning/g;

    aput-object v1, v0, v5

    sput-object v0, Lcom/piriform/ccleaner/cleaning/g;->e:[Lcom/piriform/ccleaner/cleaning/g;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/piriform/ccleaner/cleaning/g;->d:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/piriform/ccleaner/cleaning/g;)Lcom/piriform/ccleaner/cleaning/g;
    .locals 5

    .prologue
    .line 17
    invoke-static {}, Lcom/piriform/ccleaner/cleaning/g;->values()[Lcom/piriform/ccleaner/cleaning/g;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 18
    iget-object v4, v0, Lcom/piriform/ccleaner/cleaning/g;->d:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object p1, v0

    .line 22
    :cond_0
    return-object p1

    .line 17
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/g;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/piriform/ccleaner/cleaning/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/g;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/cleaning/g;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/piriform/ccleaner/cleaning/g;->e:[Lcom/piriform/ccleaner/cleaning/g;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/cleaning/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/cleaning/g;

    return-object v0
.end method
