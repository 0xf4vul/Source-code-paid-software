.class final Lcom/piriform/ccleaner/cleaning/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/cleaning/a$a;
    }
.end annotation


# instance fields
.field final a:Lcom/piriform/ccleaner/a/e;

.field final b:Lcom/piriform/ccleaner/a/b;

.field final c:Lcom/piriform/ccleaner/cleaning/b;

.field final d:Lcom/piriform/ccleaner/n/a;

.field final e:Lcom/piriform/ccleaner/ui/d/a;

.field final f:Lcom/piriform/ccleaner/reminder/b;

.field final g:Lcom/piriform/ccleaner/ui/d/b;

.field final h:Lcom/piriform/ccleaner/b/e;

.field final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field final j:Lcom/piriform/ccleaner/b;

.field k:Lcom/piriform/ccleaner/l/c;

.field final l:Lcom/piriform/ccleaner/cleaning/a$a;

.field m:Lcom/piriform/ccleaner/d/a/b;

.field n:Lcom/piriform/ccleaner/d/a/a;

.field o:Z

.field final p:Lcom/piriform/ccleaner/a/f;

.field final q:Lcom/piriform/ccleaner/cleaning/d;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/a/e;Lcom/piriform/ccleaner/b;Lcom/piriform/ccleaner/a/b;Lcom/piriform/ccleaner/cleaning/b;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/ui/d/a;Lcom/piriform/ccleaner/reminder/b;Lcom/piriform/ccleaner/ui/d/b;Lcom/piriform/ccleaner/l/c;Lcom/piriform/ccleaner/b/e;Lcom/piriform/ccleaner/cleaning/a$a;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/a;->i:Ljava/util/List;

    .line 115
    new-instance v0, Lcom/piriform/ccleaner/cleaning/a$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/cleaning/a$1;-><init>(Lcom/piriform/ccleaner/cleaning/a;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/a;->p:Lcom/piriform/ccleaner/a/f;

    .line 133
    new-instance v0, Lcom/piriform/ccleaner/cleaning/a$2;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/cleaning/a$2;-><init>(Lcom/piriform/ccleaner/cleaning/a;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/a;->q:Lcom/piriform/ccleaner/cleaning/d;

    .line 52
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/a;->a:Lcom/piriform/ccleaner/a/e;

    .line 53
    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/a;->j:Lcom/piriform/ccleaner/b;

    .line 54
    iput-object p3, p0, Lcom/piriform/ccleaner/cleaning/a;->b:Lcom/piriform/ccleaner/a/b;

    .line 55
    iput-object p4, p0, Lcom/piriform/ccleaner/cleaning/a;->c:Lcom/piriform/ccleaner/cleaning/b;

    .line 56
    iput-object p5, p0, Lcom/piriform/ccleaner/cleaning/a;->d:Lcom/piriform/ccleaner/n/a;

    .line 57
    iput-object p6, p0, Lcom/piriform/ccleaner/cleaning/a;->e:Lcom/piriform/ccleaner/ui/d/a;

    .line 58
    iput-object p7, p0, Lcom/piriform/ccleaner/cleaning/a;->f:Lcom/piriform/ccleaner/reminder/b;

    .line 59
    iput-object p8, p0, Lcom/piriform/ccleaner/cleaning/a;->g:Lcom/piriform/ccleaner/ui/d/b;

    .line 60
    iput-object p9, p0, Lcom/piriform/ccleaner/cleaning/a;->k:Lcom/piriform/ccleaner/l/c;

    .line 61
    iput-object p10, p0, Lcom/piriform/ccleaner/cleaning/a;->h:Lcom/piriform/ccleaner/b/e;

    .line 62
    iput-object p11, p0, Lcom/piriform/ccleaner/cleaning/a;->l:Lcom/piriform/ccleaner/cleaning/a$a;

    .line 63
    return-void
.end method
