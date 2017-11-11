.class public abstract enum Lcom/piriform/ccleaner/t/x$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/t/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/t/x$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/t/x$a;

.field public static final enum b:Lcom/piriform/ccleaner/t/x$a;

.field public static final enum c:Lcom/piriform/ccleaner/t/x$a;

.field private static final synthetic e:[Lcom/piriform/ccleaner/t/x$a;


# instance fields
.field final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 100
    new-instance v0, Lcom/piriform/ccleaner/t/x$a$1;

    const-string/jumbo v1, "BYTES"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/t/x$a$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/t/x$a;->a:Lcom/piriform/ccleaner/t/x$a;

    .line 106
    new-instance v0, Lcom/piriform/ccleaner/t/x$a$2;

    const-string/jumbo v1, "PERCENTAGE"

    const-string/jumbo v2, "%"

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/t/x$a$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/t/x$a;->b:Lcom/piriform/ccleaner/t/x$a;

    .line 112
    new-instance v0, Lcom/piriform/ccleaner/t/x$a$3;

    const-string/jumbo v1, "CELSIUS"

    const-string/jumbo v2, " \u2103"

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/t/x$a$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/t/x$a;->c:Lcom/piriform/ccleaner/t/x$a;

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/piriform/ccleaner/t/x$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/piriform/ccleaner/t/x$a;->a:Lcom/piriform/ccleaner/t/x$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/piriform/ccleaner/t/x$a;->b:Lcom/piriform/ccleaner/t/x$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/piriform/ccleaner/t/x$a;->c:Lcom/piriform/ccleaner/t/x$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/piriform/ccleaner/t/x$a;->e:[Lcom/piriform/ccleaner/t/x$a;

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
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput-object p3, p0, Lcom/piriform/ccleaner/t/x$a;->d:Ljava/lang/String;

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;B)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/piriform/ccleaner/t/x$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/t/x$a;
    .locals 1

    .prologue
    .line 99
    const-class v0, Lcom/piriform/ccleaner/t/x$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/x$a;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/t/x$a;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/piriform/ccleaner/t/x$a;->e:[Lcom/piriform/ccleaner/t/x$a;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/t/x$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/t/x$a;

    return-object v0
.end method


# virtual methods
.method public abstract a(F)Ljava/lang/String;
.end method
