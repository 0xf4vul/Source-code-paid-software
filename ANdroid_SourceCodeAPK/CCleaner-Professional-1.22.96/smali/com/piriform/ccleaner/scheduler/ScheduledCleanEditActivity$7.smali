.class final Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$7;
.super Lcom/novoda/notils/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$7;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;

    invoke-direct {p0}, Lcom/novoda/notils/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    iget-object v2, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$7;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;

    iget-object v4, v2, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->m:Lcom/piriform/ccleaner/scheduler/h;

    .line 1122
    iget-object v2, v4, Lcom/piriform/ccleaner/scheduler/h;->d:Lcom/piriform/ccleaner/l/b;

    if-eqz v2, :cond_0

    .line 1123
    iget-object v2, v4, Lcom/piriform/ccleaner/scheduler/h;->d:Lcom/piriform/ccleaner/l/b;

    .line 1204
    iget-object v5, v2, Lcom/piriform/ccleaner/l/b;->g:Ljava/lang/String;

    .line 2133
    if-nez p1, :cond_1

    const/4 v2, 0x0

    move-object v3, v2

    .line 3011
    :goto_0
    if-nez v5, :cond_3

    if-nez v3, :cond_2

    move v2, v0

    .line 1125
    :goto_1
    if-nez v2, :cond_4

    .line 1126
    :goto_2
    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, v4, Lcom/piriform/ccleaner/scheduler/h;->d:Lcom/piriform/ccleaner/l/b;

    .line 3208
    iput-object v3, v0, Lcom/piriform/ccleaner/l/b;->g:Ljava/lang/String;

    .line 99
    :cond_0
    return-void

    .line 2133
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    :cond_2
    move v2, v1

    .line 3011
    goto :goto_1

    :cond_3
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1125
    goto :goto_2
.end method
