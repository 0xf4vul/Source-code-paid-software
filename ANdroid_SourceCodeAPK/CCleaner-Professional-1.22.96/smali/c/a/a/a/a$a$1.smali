.class final Lc/a/a/a/a$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/a/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/a/a/a/a$b;

.field final synthetic b:Lc/a/a/a/a$a;


# direct methods
.method constructor <init>(Lc/a/a/a/a$a;Lc/a/a/a/a$b;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lc/a/a/a/a$a$1;->b:Lc/a/a/a/a$a;

    iput-object p2, p0, Lc/a/a/a/a$a$1;->a:Lc/a/a/a/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lc/a/a/a/a$a$1;->a:Lc/a/a/a/a$b;

    invoke-virtual {v0, p1}, Lc/a/a/a/a$b;->a(Landroid/app/Activity;)V

    .line 107
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lc/a/a/a/a$a$1;->a:Lc/a/a/a/a$b;

    invoke-virtual {v0, p1}, Lc/a/a/a/a$b;->d(Landroid/app/Activity;)V

    .line 122
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lc/a/a/a/a$a$1;->a:Lc/a/a/a/a$b;

    invoke-virtual {v0, p1}, Lc/a/a/a/a$b;->c(Landroid/app/Activity;)V

    .line 117
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lc/a/a/a/a$a$1;->a:Lc/a/a/a/a$b;

    invoke-virtual {v0, p1}, Lc/a/a/a/a$b;->b(Landroid/app/Activity;)V

    .line 112
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lc/a/a/a/a$a$1;->a:Lc/a/a/a/a$b;

    invoke-virtual {v0, p1}, Lc/a/a/a/a$b;->e(Landroid/app/Activity;)V

    .line 127
    return-void
.end method
