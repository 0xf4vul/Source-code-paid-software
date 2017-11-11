.class final Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$4;->b:Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/scheduler/b;Z)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$4;->b:Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->m:Lcom/piriform/ccleaner/scheduler/h;

    .line 1115
    iget-object v1, v0, Lcom/piriform/ccleaner/scheduler/h;->d:Lcom/piriform/ccleaner/l/b;

    if-eqz v1, :cond_0

    .line 1116
    iget-object v1, v0, Lcom/piriform/ccleaner/scheduler/h;->d:Lcom/piriform/ccleaner/l/b;

    .line 1190
    if-eqz p2, :cond_1

    .line 1191
    iget-object v1, v1, Lcom/piriform/ccleaner/l/b;->d:Lcom/piriform/ccleaner/l/d;

    invoke-virtual {v1, p1}, Lcom/piriform/ccleaner/l/d;->a(Lcom/piriform/ccleaner/scheduler/b;)V

    .line 1117
    :goto_0
    iget-object v1, v0, Lcom/piriform/ccleaner/scheduler/h;->c:Lcom/piriform/ccleaner/scheduler/h$a;

    iget-object v0, v0, Lcom/piriform/ccleaner/scheduler/h;->d:Lcom/piriform/ccleaner/l/b;

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/scheduler/h$a;->a(Lcom/piriform/ccleaner/l/c;)V

    .line 81
    :cond_0
    return-void

    .line 1193
    :cond_1
    iget-object v1, v1, Lcom/piriform/ccleaner/l/b;->d:Lcom/piriform/ccleaner/l/d;

    .line 2068
    iget-object v1, v1, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
