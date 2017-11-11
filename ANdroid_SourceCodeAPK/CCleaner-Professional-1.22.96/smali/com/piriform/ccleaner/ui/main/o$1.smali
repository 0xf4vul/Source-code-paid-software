.class final Lcom/piriform/ccleaner/ui/main/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/main/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:J

.field final synthetic e:Lcom/piriform/ccleaner/ui/main/o;

.field private f:J


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/main/o;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 122
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/o$1;->e:Lcom/piriform/ccleaner/ui/main/o;

    iput-object p2, p0, Lcom/piriform/ccleaner/ui/main/o$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/piriform/ccleaner/ui/main/o$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/piriform/ccleaner/ui/main/o$1;->c:Landroid/content/Context;

    iput-wide p5, p0, Lcom/piriform/ccleaner/ui/main/o$1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 128
    iget-wide v2, p0, Lcom/piriform/ccleaner/ui/main/o$1;->f:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 143
    :goto_0
    return-void

    .line 131
    :cond_0
    iput-wide v0, p0, Lcom/piriform/ccleaner/ui/main/o$1;->f:J

    .line 133
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/o$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/o$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/ui/main/o;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/o$1;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/main/o$1;->a:Ljava/lang/String;

    iget-wide v4, p0, Lcom/piriform/ccleaner/ui/main/o$1;->d:J

    invoke-static {v1, v2, v4, v5}, Lcom/piriform/ccleaner/ui/main/o;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 136
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/o$1;->e:Lcom/piriform/ccleaner/ui/main/o;

    invoke-static {v1}, Lcom/piriform/ccleaner/ui/main/o;->a(Lcom/piriform/ccleaner/ui/main/o;)Lcom/piriform/ccleaner/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/a;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/o$1;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/piriform/ccleaner/CCleanerApplication;->a(Landroid/content/Context;)Lcom/piriform/ccleaner/CCleanerApplication;

    move-result-object v1

    .line 1118
    iget-object v1, v1, Lcom/piriform/ccleaner/CCleanerApplication;->e:Lcom/piriform/ccleaner/b/e;

    .line 140
    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
