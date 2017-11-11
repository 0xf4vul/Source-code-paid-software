.class public enum Lcom/piriform/ccleaner/professional/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/professional/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/professional/m;

.field public static final enum b:Lcom/piriform/ccleaner/professional/m;

.field public static final enum c:Lcom/piriform/ccleaner/professional/m;

.field public static final enum d:Lcom/piriform/ccleaner/professional/m;

.field public static final enum e:Lcom/piriform/ccleaner/professional/m;

.field public static final f:Lcom/piriform/ccleaner/professional/m;

.field private static final synthetic h:[Lcom/piriform/ccleaner/professional/m;


# instance fields
.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 4
    new-instance v0, Lcom/piriform/ccleaner/professional/m$1;

    const-string/jumbo v1, "UPGRADED"

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/professional/m$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/professional/m;->a:Lcom/piriform/ccleaner/professional/m;

    .line 13
    new-instance v0, Lcom/piriform/ccleaner/professional/m$2;

    const-string/jumbo v1, "CAN_UPGRADE"

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/professional/m$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/professional/m;->b:Lcom/piriform/ccleaner/professional/m;

    .line 22
    new-instance v0, Lcom/piriform/ccleaner/professional/m;

    const-string/jumbo v1, "UNKNOWN_SHOULD_RETRY"

    invoke-direct {v0, v1, v5, v3}, Lcom/piriform/ccleaner/professional/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/professional/m;->c:Lcom/piriform/ccleaner/professional/m;

    .line 23
    new-instance v0, Lcom/piriform/ccleaner/professional/m;

    const-string/jumbo v1, "UPGRADE_NOT_SUPPORTED"

    invoke-direct {v0, v1, v3, v4}, Lcom/piriform/ccleaner/professional/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/professional/m;->d:Lcom/piriform/ccleaner/professional/m;

    .line 24
    new-instance v0, Lcom/piriform/ccleaner/professional/m;

    const-string/jumbo v1, "BUILD_NOT_SUPPORTED"

    invoke-direct {v0, v1, v4, v2}, Lcom/piriform/ccleaner/professional/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/professional/m;->e:Lcom/piriform/ccleaner/professional/m;

    .line 3
    new-array v0, v2, [Lcom/piriform/ccleaner/professional/m;

    const/4 v1, 0x0

    sget-object v2, Lcom/piriform/ccleaner/professional/m;->a:Lcom/piriform/ccleaner/professional/m;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/piriform/ccleaner/professional/m;->b:Lcom/piriform/ccleaner/professional/m;

    aput-object v2, v0, v1

    sget-object v1, Lcom/piriform/ccleaner/professional/m;->c:Lcom/piriform/ccleaner/professional/m;

    aput-object v1, v0, v5

    sget-object v1, Lcom/piriform/ccleaner/professional/m;->d:Lcom/piriform/ccleaner/professional/m;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/professional/m;->e:Lcom/piriform/ccleaner/professional/m;

    aput-object v1, v0, v4

    sput-object v0, Lcom/piriform/ccleaner/professional/m;->h:[Lcom/piriform/ccleaner/professional/m;

    .line 26
    sget-object v0, Lcom/piriform/ccleaner/professional/m;->c:Lcom/piriform/ccleaner/professional/m;

    sput-object v0, Lcom/piriform/ccleaner/professional/m;->f:Lcom/piriform/ccleaner/professional/m;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/piriform/ccleaner/professional/m;->g:I

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIB)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/piriform/ccleaner/professional/m;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static a(I)Lcom/piriform/ccleaner/professional/m;
    .locals 5

    .prologue
    .line 39
    invoke-static {}, Lcom/piriform/ccleaner/professional/m;->values()[Lcom/piriform/ccleaner/professional/m;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 40
    iget v4, v0, Lcom/piriform/ccleaner/professional/m;->g:I

    if-ne v4, p0, :cond_0

    .line 44
    :goto_1
    return-object v0

    .line 39
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lcom/piriform/ccleaner/professional/m;->f:Lcom/piriform/ccleaner/professional/m;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/professional/m;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/piriform/ccleaner/professional/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/professional/m;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/professional/m;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/piriform/ccleaner/professional/m;->h:[Lcom/piriform/ccleaner/professional/m;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/professional/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/professional/m;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/piriform/ccleaner/professional/m;)Lcom/piriform/ccleaner/professional/m;
    .locals 0

    .prologue
    .line 52
    return-object p1
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/piriform/ccleaner/professional/m;->a:Lcom/piriform/ccleaner/professional/m;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
