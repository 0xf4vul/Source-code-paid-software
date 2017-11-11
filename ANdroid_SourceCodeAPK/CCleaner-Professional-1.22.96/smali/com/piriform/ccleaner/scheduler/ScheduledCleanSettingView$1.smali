.class final Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView$1;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView$1;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;

    invoke-static {v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->a(Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 30
    return-void
.end method
