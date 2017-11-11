.class public final Lcom/piriform/ccleaner/professional/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/professional/p$c;,
        Lcom/piriform/ccleaner/professional/p$b;,
        Lcom/piriform/ccleaner/professional/p$a;
    }
.end annotation


# instance fields
.field public a:Lcom/piriform/ccleaner/professional/p$a;

.field b:Lcom/piriform/ccleaner/professional/p$c;

.field private final c:Lcom/piriform/ccleaner/professional/g;

.field private final d:Lf/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e",
            "<",
            "Lcom/piriform/ccleaner/professional/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/professional/g;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/piriform/ccleaner/professional/p$a;->a:Lcom/piriform/ccleaner/professional/p$a;

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/p;->a:Lcom/piriform/ccleaner/professional/p$a;

    .line 17
    new-instance v0, Lcom/piriform/ccleaner/professional/p$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/professional/p$1;-><init>(Lcom/piriform/ccleaner/professional/p;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/p;->d:Lf/e;

    .line 40
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/p;->c:Lcom/piriform/ccleaner/professional/g;

    .line 41
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/p;->c:Lcom/piriform/ccleaner/professional/g;

    invoke-interface {v0}, Lcom/piriform/ccleaner/professional/g;->a()Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/professional/p;->d:Lf/e;

    invoke-virtual {v0, v1}, Lf/d;->a(Lf/e;)Lf/j;

    .line 55
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/professional/p$a;Lcom/piriform/ccleaner/professional/p$c;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/p;->a:Lcom/piriform/ccleaner/professional/p$a;

    .line 45
    iput-object p2, p0, Lcom/piriform/ccleaner/professional/p;->b:Lcom/piriform/ccleaner/professional/p$c;

    .line 46
    invoke-virtual {p0}, Lcom/piriform/ccleaner/professional/p;->a()V

    .line 47
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/professional/ui/b;)V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/piriform/ccleaner/professional/p$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/piriform/ccleaner/professional/p$b;-><init>(Lcom/piriform/ccleaner/professional/p;B)V

    invoke-interface {p1, v0}, Lcom/piriform/ccleaner/professional/ui/b;->setListener(Lcom/piriform/ccleaner/professional/ui/b$a;)V

    .line 51
    return-void
.end method
