.class public final enum Lcom/piriform/ccleaner/t/q$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/t/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/t/q$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/t/q$a;

.field public static final enum b:Lcom/piriform/ccleaner/t/q$a;

.field private static final synthetic e:[Lcom/piriform/ccleaner/t/q$a;


# instance fields
.field final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/piriform/ccleaner/t/u$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/piriform/ccleaner/t/x$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lcom/piriform/ccleaner/t/q$a;

    const-string/jumbo v1, "RAM"

    sget-object v2, Lcom/piriform/ccleaner/t/u$b;->b:Lcom/piriform/ccleaner/t/u$b;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/piriform/ccleaner/t/x$b;->e:Lcom/piriform/ccleaner/t/x$b;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/piriform/ccleaner/t/q$a;-><init>(Ljava/lang/String;ILjava/util/Collection;Lcom/piriform/ccleaner/t/x$b;)V

    sput-object v0, Lcom/piriform/ccleaner/t/q$a;->a:Lcom/piriform/ccleaner/t/q$a;

    .line 15
    new-instance v0, Lcom/piriform/ccleaner/t/q$a;

    const-string/jumbo v1, "STORAGE"

    new-array v2, v6, [Lcom/piriform/ccleaner/t/u$b;

    sget-object v3, Lcom/piriform/ccleaner/t/u$b;->f:Lcom/piriform/ccleaner/t/u$b;

    aput-object v3, v2, v4

    sget-object v3, Lcom/piriform/ccleaner/t/u$b;->e:Lcom/piriform/ccleaner/t/u$b;

    aput-object v3, v2, v5

    .line 16
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/piriform/ccleaner/t/x$b;->m:Lcom/piriform/ccleaner/t/x$b;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/piriform/ccleaner/t/q$a;-><init>(Ljava/lang/String;ILjava/util/Collection;Lcom/piriform/ccleaner/t/x$b;)V

    sput-object v0, Lcom/piriform/ccleaner/t/q$a;->b:Lcom/piriform/ccleaner/t/q$a;

    .line 13
    new-array v0, v6, [Lcom/piriform/ccleaner/t/q$a;

    sget-object v1, Lcom/piriform/ccleaner/t/q$a;->a:Lcom/piriform/ccleaner/t/q$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/t/q$a;->b:Lcom/piriform/ccleaner/t/q$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/piriform/ccleaner/t/q$a;->e:[Lcom/piriform/ccleaner/t/q$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Collection;Lcom/piriform/ccleaner/t/x$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/piriform/ccleaner/t/u$b;",
            ">;",
            "Lcom/piriform/ccleaner/t/x$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/piriform/ccleaner/t/q$a;->c:Ljava/util/Collection;

    .line 25
    iput-object p4, p0, Lcom/piriform/ccleaner/t/q$a;->d:Lcom/piriform/ccleaner/t/x$b;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/t/q$a;)Lcom/piriform/ccleaner/t/x$b;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/piriform/ccleaner/t/q$a;->d:Lcom/piriform/ccleaner/t/x$b;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/t/q$a;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/piriform/ccleaner/t/q$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/q$a;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/t/q$a;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/piriform/ccleaner/t/q$a;->e:[Lcom/piriform/ccleaner/t/q$a;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/t/q$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/t/q$a;

    return-object v0
.end method
