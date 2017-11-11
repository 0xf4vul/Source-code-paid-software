.class public final enum Lcom/piriform/ccleaner/cleaning/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/cleaning/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/cleaning/e;

.field public static final enum b:Lcom/piriform/ccleaner/cleaning/e;

.field private static final synthetic d:[Lcom/piriform/ccleaner/cleaning/e;


# instance fields
.field final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/piriform/ccleaner/cleaning/e;

    const-string/jumbo v1, "WIDGET"

    const-string/jumbo v2, "Widget"

    invoke-direct {v0, v1, v3, v2}, Lcom/piriform/ccleaner/cleaning/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/cleaning/e;->a:Lcom/piriform/ccleaner/cleaning/e;

    .line 5
    new-instance v0, Lcom/piriform/ccleaner/cleaning/e;

    const-string/jumbo v1, "NOTIFICATION"

    const-string/jumbo v2, "Notification"

    invoke-direct {v0, v1, v4, v2}, Lcom/piriform/ccleaner/cleaning/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/cleaning/e;->b:Lcom/piriform/ccleaner/cleaning/e;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/piriform/ccleaner/cleaning/e;

    sget-object v1, Lcom/piriform/ccleaner/cleaning/e;->a:Lcom/piriform/ccleaner/cleaning/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/cleaning/e;->b:Lcom/piriform/ccleaner/cleaning/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/piriform/ccleaner/cleaning/e;->d:[Lcom/piriform/ccleaner/cleaning/e;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lcom/piriform/ccleaner/cleaning/e;->c:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/e;
    .locals 5

    .prologue
    .line 18
    invoke-static {}, Lcom/piriform/ccleaner/cleaning/e;->values()[Lcom/piriform/ccleaner/cleaning/e;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1014
    iget-object v4, v0, Lcom/piriform/ccleaner/cleaning/e;->c:Ljava/lang/String;

    .line 19
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    :goto_1
    return-object v0

    .line 18
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/e;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/piriform/ccleaner/cleaning/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/e;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/cleaning/e;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/piriform/ccleaner/cleaning/e;->d:[Lcom/piriform/ccleaner/cleaning/e;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/cleaning/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/cleaning/e;

    return-object v0
.end method
