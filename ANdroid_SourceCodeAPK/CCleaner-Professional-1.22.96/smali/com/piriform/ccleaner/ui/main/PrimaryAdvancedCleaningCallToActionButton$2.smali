.class final Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$2;->a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$2;->a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->d(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)V

    .line 100
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$2;->a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->b:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->G:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 101
    return-void
.end method
