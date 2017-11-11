.class final Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/cleaning/advanced/ak$a;


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
    .line 119
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$4;->a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final gotIt()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$4;->a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->a:Lcom/piriform/ccleaner/cleaning/advanced/b;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/b;->launchAccessibilitySettings()V

    .line 123
    return-void
.end method
