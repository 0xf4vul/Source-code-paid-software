.class public final enum Lcom/piriform/ccleaner/a/a/d$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/a/a/d$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/a/a/d$c;

.field public static final enum b:Lcom/piriform/ccleaner/a/a/d$c;

.field public static final enum c:Lcom/piriform/ccleaner/a/a/d$c;

.field public static final enum d:Lcom/piriform/ccleaner/a/a/d$c;

.field private static final synthetic e:[Lcom/piriform/ccleaner/a/a/d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/piriform/ccleaner/a/a/d$c;

    const-string/jumbo v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/a/a/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/piriform/ccleaner/a/a/d$c;->a:Lcom/piriform/ccleaner/a/a/d$c;

    new-instance v0, Lcom/piriform/ccleaner/a/a/d$c;

    const-string/jumbo v1, "WAITING"

    invoke-direct {v0, v1, v3}, Lcom/piriform/ccleaner/a/a/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/piriform/ccleaner/a/a/d$c;->b:Lcom/piriform/ccleaner/a/a/d$c;

    new-instance v0, Lcom/piriform/ccleaner/a/a/d$c;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/piriform/ccleaner/a/a/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/piriform/ccleaner/a/a/d$c;->c:Lcom/piriform/ccleaner/a/a/d$c;

    new-instance v0, Lcom/piriform/ccleaner/a/a/d$c;

    const-string/jumbo v1, "DONE"

    invoke-direct {v0, v1, v5}, Lcom/piriform/ccleaner/a/a/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/piriform/ccleaner/a/a/d$c;->d:Lcom/piriform/ccleaner/a/a/d$c;

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/piriform/ccleaner/a/a/d$c;

    sget-object v1, Lcom/piriform/ccleaner/a/a/d$c;->a:Lcom/piriform/ccleaner/a/a/d$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/piriform/ccleaner/a/a/d$c;->b:Lcom/piriform/ccleaner/a/a/d$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/a/a/d$c;->c:Lcom/piriform/ccleaner/a/a/d$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/a/a/d$c;->d:Lcom/piriform/ccleaner/a/a/d$c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/piriform/ccleaner/a/a/d$c;->e:[Lcom/piriform/ccleaner/a/a/d$c;

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
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/a/a/d$c;
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/piriform/ccleaner/a/a/d$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d$c;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/a/a/d$c;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$c;->e:[Lcom/piriform/ccleaner/a/a/d$c;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/a/a/d$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/a/a/d$c;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$c;->a:Lcom/piriform/ccleaner/a/a/d$c;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
