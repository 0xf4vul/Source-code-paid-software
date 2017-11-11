.class public final enum Lcom/piriform/ccleaner/reminder/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/reminder/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/reminder/a;

.field public static final enum b:Lcom/piriform/ccleaner/reminder/a;

.field public static final enum c:Lcom/piriform/ccleaner/reminder/a;

.field public static final enum d:Lcom/piriform/ccleaner/reminder/a;

.field public static final e:Lcom/piriform/ccleaner/reminder/a;

.field private static final synthetic h:[Lcom/piriform/ccleaner/reminder/a;


# instance fields
.field public final f:I

.field public final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/piriform/ccleaner/reminder/a;

    const-string/jumbo v1, "NEVER"

    const-string/jumbo v2, "Never"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/piriform/ccleaner/reminder/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/reminder/a;->a:Lcom/piriform/ccleaner/reminder/a;

    .line 8
    new-instance v0, Lcom/piriform/ccleaner/reminder/a;

    const-string/jumbo v1, "EVERY_DAY"

    const-string/jumbo v2, "24 Hours"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/piriform/ccleaner/reminder/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/reminder/a;->b:Lcom/piriform/ccleaner/reminder/a;

    .line 9
    new-instance v0, Lcom/piriform/ccleaner/reminder/a;

    const-string/jumbo v1, "TWICE_PER_WEEK"

    const-string/jumbo v2, "3 days"

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/piriform/ccleaner/reminder/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/reminder/a;->c:Lcom/piriform/ccleaner/reminder/a;

    .line 10
    new-instance v0, Lcom/piriform/ccleaner/reminder/a;

    const-string/jumbo v1, "ONCE_PER_WEEK"

    const/4 v2, 0x7

    const-string/jumbo v3, "7 days"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/piriform/ccleaner/reminder/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/reminder/a;->d:Lcom/piriform/ccleaner/reminder/a;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/piriform/ccleaner/reminder/a;

    sget-object v1, Lcom/piriform/ccleaner/reminder/a;->a:Lcom/piriform/ccleaner/reminder/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/reminder/a;->b:Lcom/piriform/ccleaner/reminder/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/piriform/ccleaner/reminder/a;->c:Lcom/piriform/ccleaner/reminder/a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/piriform/ccleaner/reminder/a;->d:Lcom/piriform/ccleaner/reminder/a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/piriform/ccleaner/reminder/a;->h:[Lcom/piriform/ccleaner/reminder/a;

    .line 12
    sget-object v0, Lcom/piriform/ccleaner/reminder/a;->a:Lcom/piriform/ccleaner/reminder/a;

    sput-object v0, Lcom/piriform/ccleaner/reminder/a;->e:Lcom/piriform/ccleaner/reminder/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/piriform/ccleaner/reminder/a;->f:I

    .line 32
    iput-object p4, p0, Lcom/piriform/ccleaner/reminder/a;->g:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static a(I)Lcom/piriform/ccleaner/reminder/a;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/piriform/ccleaner/reminder/a;->values()[Lcom/piriform/ccleaner/reminder/a;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/piriform/ccleaner/reminder/a;
    .locals 6

    .prologue
    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 22
    invoke-static {}, Lcom/piriform/ccleaner/reminder/a;->values()[Lcom/piriform/ccleaner/reminder/a;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 23
    iget v5, v0, Lcom/piriform/ccleaner/reminder/a;->f:I

    if-ne v5, v2, :cond_0

    .line 27
    :goto_1
    return-object v0

    .line 22
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 27
    :cond_1
    sget-object v0, Lcom/piriform/ccleaner/reminder/a;->a:Lcom/piriform/ccleaner/reminder/a;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/reminder/a;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/piriform/ccleaner/reminder/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/reminder/a;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/reminder/a;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/piriform/ccleaner/reminder/a;->h:[Lcom/piriform/ccleaner/reminder/a;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/reminder/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/reminder/a;

    return-object v0
.end method
