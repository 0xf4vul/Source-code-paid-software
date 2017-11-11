.class final Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$1;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 30
    const v0, 0x7f10000d

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/scheduler/b;

    .line 31
    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$1;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;

    invoke-static {v1}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;->a(Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;)Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$a;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$a;->a(Lcom/piriform/ccleaner/scheduler/b;Z)V

    .line 32
    return-void
.end method
