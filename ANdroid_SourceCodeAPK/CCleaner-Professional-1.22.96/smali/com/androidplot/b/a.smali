.class public final enum Lcom/androidplot/b/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/b/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/androidplot/b/a;

.field public static final enum b:Lcom/androidplot/b/a;

.field public static final enum c:Lcom/androidplot/b/a;

.field public static final enum d:Lcom/androidplot/b/a;

.field public static final enum e:Lcom/androidplot/b/a;

.field public static final enum f:Lcom/androidplot/b/a;

.field public static final enum g:Lcom/androidplot/b/a;

.field public static final enum h:Lcom/androidplot/b/a;

.field public static final enum i:Lcom/androidplot/b/a;

.field private static final synthetic j:[Lcom/androidplot/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/androidplot/b/a;

    const-string/jumbo v1, "TOP_MIDDLE"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/b/a;->a:Lcom/androidplot/b/a;

    .line 25
    new-instance v0, Lcom/androidplot/b/a;

    const-string/jumbo v1, "LEFT_TOP"

    invoke-direct {v0, v1, v4}, Lcom/androidplot/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/b/a;->b:Lcom/androidplot/b/a;

    .line 26
    new-instance v0, Lcom/androidplot/b/a;

    const-string/jumbo v1, "LEFT_MIDDLE"

    invoke-direct {v0, v1, v5}, Lcom/androidplot/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/b/a;->c:Lcom/androidplot/b/a;

    .line 27
    new-instance v0, Lcom/androidplot/b/a;

    const-string/jumbo v1, "LEFT_BOTTOM"

    invoke-direct {v0, v1, v6}, Lcom/androidplot/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/b/a;->d:Lcom/androidplot/b/a;

    .line 28
    new-instance v0, Lcom/androidplot/b/a;

    const-string/jumbo v1, "RIGHT_TOP"

    invoke-direct {v0, v1, v7}, Lcom/androidplot/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/b/a;->e:Lcom/androidplot/b/a;

    .line 29
    new-instance v0, Lcom/androidplot/b/a;

    const-string/jumbo v1, "RIGHT_MIDDLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/androidplot/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/b/a;->f:Lcom/androidplot/b/a;

    .line 30
    new-instance v0, Lcom/androidplot/b/a;

    const-string/jumbo v1, "RIGHT_BOTTOM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/androidplot/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/b/a;->g:Lcom/androidplot/b/a;

    .line 31
    new-instance v0, Lcom/androidplot/b/a;

    const-string/jumbo v1, "BOTTOM_MIDDLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/androidplot/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/b/a;->h:Lcom/androidplot/b/a;

    .line 32
    new-instance v0, Lcom/androidplot/b/a;

    const-string/jumbo v1, "CENTER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/androidplot/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/b/a;->i:Lcom/androidplot/b/a;

    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/androidplot/b/a;

    sget-object v1, Lcom/androidplot/b/a;->a:Lcom/androidplot/b/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/b/a;->b:Lcom/androidplot/b/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/androidplot/b/a;->c:Lcom/androidplot/b/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/androidplot/b/a;->d:Lcom/androidplot/b/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/androidplot/b/a;->e:Lcom/androidplot/b/a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/androidplot/b/a;->f:Lcom/androidplot/b/a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/androidplot/b/a;->g:Lcom/androidplot/b/a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/androidplot/b/a;->h:Lcom/androidplot/b/a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/androidplot/b/a;->i:Lcom/androidplot/b/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/androidplot/b/a;->j:[Lcom/androidplot/b/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/b/a;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/androidplot/b/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/b/a;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/b/a;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/androidplot/b/a;->j:[Lcom/androidplot/b/a;

    invoke-virtual {v0}, [Lcom/androidplot/b/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/b/a;

    return-object v0
.end method
