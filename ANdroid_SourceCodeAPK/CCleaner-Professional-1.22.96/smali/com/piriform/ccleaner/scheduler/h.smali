.class public final Lcom/piriform/ccleaner/scheduler/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/scheduler/h$a;
    }
.end annotation


# instance fields
.field final a:Lcom/piriform/ccleaner/scheduler/n;

.field final b:Lf/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e",
            "<",
            "Lcom/piriform/ccleaner/l/c;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/piriform/ccleaner/scheduler/h$a;

.field d:Lcom/piriform/ccleaner/l/b;

.field e:Lf/j;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/scheduler/n;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/piriform/ccleaner/scheduler/h$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/scheduler/h$1;-><init>(Lcom/piriform/ccleaner/scheduler/h;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/h;->b:Lf/e;

    .line 37
    sget-object v0, Lcom/piriform/ccleaner/scheduler/h$a;->a:Lcom/piriform/ccleaner/scheduler/h$a;

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/h;->c:Lcom/piriform/ccleaner/scheduler/h$a;

    .line 45
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/h;->a:Lcom/piriform/ccleaner/scheduler/n;

    .line 46
    return-void
.end method


# virtual methods
.method final a(Lcom/piriform/ccleaner/l/c;)V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/piriform/ccleaner/l/b;

    invoke-direct {v0, p1}, Lcom/piriform/ccleaner/l/b;-><init>(Lcom/piriform/ccleaner/l/c;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/h;->d:Lcom/piriform/ccleaner/l/b;

    .line 59
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/h;->c:Lcom/piriform/ccleaner/scheduler/h$a;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/scheduler/h$a;->a(Lcom/piriform/ccleaner/l/c;)V

    .line 60
    return-void
.end method
