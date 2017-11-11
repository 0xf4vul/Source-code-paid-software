.class public final enum Lcom/piriform/ccleaner/core/b/n$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/core/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/core/b/n$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/core/b/n$a;

.field public static final enum b:Lcom/piriform/ccleaner/core/b/n$a;

.field private static final synthetic d:[Lcom/piriform/ccleaner/core/b/n$a;


# instance fields
.field final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/piriform/ccleaner/core/b/n$a;

    const-string/jumbo v1, "AND"

    const-string/jumbo v2, " AND "

    invoke-direct {v0, v1, v3, v2}, Lcom/piriform/ccleaner/core/b/n$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/core/b/n$a;->a:Lcom/piriform/ccleaner/core/b/n$a;

    .line 20
    new-instance v0, Lcom/piriform/ccleaner/core/b/n$a;

    const-string/jumbo v1, "OR"

    const-string/jumbo v2, " OR "

    invoke-direct {v0, v1, v4, v2}, Lcom/piriform/ccleaner/core/b/n$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/core/b/n$a;->b:Lcom/piriform/ccleaner/core/b/n$a;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/piriform/ccleaner/core/b/n$a;

    sget-object v1, Lcom/piriform/ccleaner/core/b/n$a;->a:Lcom/piriform/ccleaner/core/b/n$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/core/b/n$a;->b:Lcom/piriform/ccleaner/core/b/n$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/piriform/ccleaner/core/b/n$a;->d:[Lcom/piriform/ccleaner/core/b/n$a;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/piriform/ccleaner/core/b/n$a;->c:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/core/b/n$a;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/piriform/ccleaner/core/b/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/b/n$a;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/core/b/n$a;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/piriform/ccleaner/core/b/n$a;->d:[Lcom/piriform/ccleaner/core/b/n$a;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/core/b/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/core/b/n$a;

    return-object v0
.end method
