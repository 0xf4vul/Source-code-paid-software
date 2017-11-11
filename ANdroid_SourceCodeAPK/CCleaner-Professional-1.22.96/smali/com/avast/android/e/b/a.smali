.class public final Lcom/avast/android/e/b/a;
.super Lcom/evernote/android/job/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/evernote/android/job/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/evernote/android/job/a$a;)Lcom/evernote/android/job/a$b;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 21
    .line 1382
    iget-object v0, p1, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    .line 2142
    iget-object v0, v0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 2474
    iget-object v0, v0, Lcom/evernote/android/job/i$b;->b:Ljava/lang/String;

    .line 23
    const-string/jumbo v1, "retry-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    const-string/jumbo v1, "retry-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 25
    sget-object v0, Lcom/avast/android/e/c/a;->a:Lcom/avast/android/d/a;

    const-string/jumbo v2, "Retrying request"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/avast/android/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Lcom/avast/android/e/a;->a()Lcom/avast/android/e/a;

    move-result-object v0

    .line 3097
    iget-object v0, v0, Lcom/avast/android/e/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/e/b;

    .line 26
    invoke-interface {v0}, Lcom/avast/android/e/b;->a()Z

    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/avast/android/e/b/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/e/a/a;->a(Landroid/content/Context;)Lcom/avast/android/e/a/a;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/avast/android/e/a/a;->a(Ljava/lang/String;I)V

    .line 30
    :cond_0
    sget-object v0, Lcom/evernote/android/job/a$b;->a:Lcom/evernote/android/job/a$b;

    .line 32
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/evernote/android/job/a$b;->b:Lcom/evernote/android/job/a$b;

    goto :goto_0
.end method
