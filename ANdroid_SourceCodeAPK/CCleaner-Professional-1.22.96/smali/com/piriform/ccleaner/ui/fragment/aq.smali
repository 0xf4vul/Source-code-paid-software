.class public final Lcom/piriform/ccleaner/ui/fragment/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/fragment/aq$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/piriform/ccleaner/core/data/AndroidPackage$b;

.field public static final b:Lcom/piriform/ccleaner/core/data/AndroidPackage$c;

.field public static final c:Lcom/piriform/ccleaner/core/data/AndroidPackage$a;


# instance fields
.field private d:Lcom/piriform/ccleaner/ui/fragment/aq$a;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/piriform/ccleaner/core/data/AndroidPackage$b;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/data/AndroidPackage$b;-><init>()V

    sput-object v0, Lcom/piriform/ccleaner/ui/fragment/aq;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage$b;

    .line 22
    new-instance v0, Lcom/piriform/ccleaner/core/data/AndroidPackage$c;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/data/AndroidPackage$c;-><init>()V

    sput-object v0, Lcom/piriform/ccleaner/ui/fragment/aq;->b:Lcom/piriform/ccleaner/core/data/AndroidPackage$c;

    .line 23
    new-instance v0, Lcom/piriform/ccleaner/core/data/AndroidPackage$a;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/data/AndroidPackage$a;-><init>()V

    sput-object v0, Lcom/piriform/ccleaner/ui/fragment/aq;->c:Lcom/piriform/ccleaner/core/data/AndroidPackage$a;

    .line 26
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/aq;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage$b;

    sget v1, Lcom/piriform/ccleaner/core/d$a;->a:I

    .line 1018
    iput v1, v0, Lcom/piriform/ccleaner/core/d;->a:I

    .line 27
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/aq;->b:Lcom/piriform/ccleaner/core/data/AndroidPackage$c;

    sget v1, Lcom/piriform/ccleaner/core/d$a;->b:I

    .line 2018
    iput v1, v0, Lcom/piriform/ccleaner/core/d;->a:I

    .line 28
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/aq;->c:Lcom/piriform/ccleaner/core/data/AndroidPackage$a;

    sget v1, Lcom/piriform/ccleaner/core/d$a;->b:I

    .line 3018
    iput v1, v0, Lcom/piriform/ccleaner/core/d;->a:I

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/piriform/ccleaner/ui/fragment/aq$a;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/aq;->e:Z

    .line 44
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/aq;->d:Lcom/piriform/ccleaner/ui/fragment/aq$a;

    .line 45
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/aq;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aq;->d:Lcom/piriform/ccleaner/ui/fragment/aq$a;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/aq$a;->a(Lcom/piriform/ccleaner/ui/fragment/aq$a;)Lcom/piriform/ccleaner/core/d;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aq;->d:Lcom/piriform/ccleaner/ui/fragment/aq$a;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/aq$a;->a(Lcom/piriform/ccleaner/ui/fragment/aq$a;)Lcom/piriform/ccleaner/core/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/piriform/ccleaner/ui/fragment/aq$a;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/aq;->d:Lcom/piriform/ccleaner/ui/fragment/aq$a;

    if-ne v1, p1, :cond_1

    .line 57
    iget-boolean v1, p0, Lcom/piriform/ccleaner/ui/fragment/aq;->e:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/aq;->e:Z

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_1
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/aq;->d:Lcom/piriform/ccleaner/ui/fragment/aq$a;

    .line 60
    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/aq;->e:Z

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/aq;->a()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 49
    return-void
.end method
