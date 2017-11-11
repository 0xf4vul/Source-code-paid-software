.class public final enum Lcom/piriform/ccleaner/ui/fragment/aq$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/fragment/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/ui/fragment/aq$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/ui/fragment/aq$a;

.field public static final enum b:Lcom/piriform/ccleaner/ui/fragment/aq$a;

.field public static final enum c:Lcom/piriform/ccleaner/ui/fragment/aq$a;

.field private static final synthetic e:[Lcom/piriform/ccleaner/ui/fragment/aq$a;


# instance fields
.field private final d:Lcom/piriform/ccleaner/core/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/core/d",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/aq$a;

    const-string/jumbo v1, "NAME"

    sget-object v2, Lcom/piriform/ccleaner/ui/fragment/aq;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage$b;

    invoke-direct {v0, v1, v3, v2}, Lcom/piriform/ccleaner/ui/fragment/aq$a;-><init>(Ljava/lang/String;ILcom/piriform/ccleaner/core/d;)V

    sput-object v0, Lcom/piriform/ccleaner/ui/fragment/aq$a;->a:Lcom/piriform/ccleaner/ui/fragment/aq$a;

    .line 33
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/aq$a;

    const-string/jumbo v1, "PACKAGE_SIZE"

    sget-object v2, Lcom/piriform/ccleaner/ui/fragment/aq;->b:Lcom/piriform/ccleaner/core/data/AndroidPackage$c;

    invoke-direct {v0, v1, v4, v2}, Lcom/piriform/ccleaner/ui/fragment/aq$a;-><init>(Ljava/lang/String;ILcom/piriform/ccleaner/core/d;)V

    sput-object v0, Lcom/piriform/ccleaner/ui/fragment/aq$a;->b:Lcom/piriform/ccleaner/ui/fragment/aq$a;

    .line 34
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/aq$a;

    const-string/jumbo v1, "CACHE_SIZE"

    sget-object v2, Lcom/piriform/ccleaner/ui/fragment/aq;->c:Lcom/piriform/ccleaner/core/data/AndroidPackage$a;

    invoke-direct {v0, v1, v5, v2}, Lcom/piriform/ccleaner/ui/fragment/aq$a;-><init>(Ljava/lang/String;ILcom/piriform/ccleaner/core/d;)V

    sput-object v0, Lcom/piriform/ccleaner/ui/fragment/aq$a;->c:Lcom/piriform/ccleaner/ui/fragment/aq$a;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/piriform/ccleaner/ui/fragment/aq$a;

    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/aq$a;->a:Lcom/piriform/ccleaner/ui/fragment/aq$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/aq$a;->b:Lcom/piriform/ccleaner/ui/fragment/aq$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/aq$a;->c:Lcom/piriform/ccleaner/ui/fragment/aq$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/piriform/ccleaner/ui/fragment/aq$a;->e:[Lcom/piriform/ccleaner/ui/fragment/aq$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/piriform/ccleaner/core/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/core/d",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/piriform/ccleaner/ui/fragment/aq$a;->d:Lcom/piriform/ccleaner/core/d;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/fragment/aq$a;)Lcom/piriform/ccleaner/core/d;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aq$a;->d:Lcom/piriform/ccleaner/core/d;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/ui/fragment/aq$a;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/piriform/ccleaner/ui/fragment/aq$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/fragment/aq$a;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/ui/fragment/aq$a;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/aq$a;->e:[Lcom/piriform/ccleaner/ui/fragment/aq$a;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/ui/fragment/aq$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/ui/fragment/aq$a;

    return-object v0
.end method
